.class public Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BLUE_SIZE:I = 0x8

.field private static final GREEN_SIZE:I = 0x8

.field private static final RED_SIZE:I = 0x8


# instance fields
.field private final configSpec:[I

.field private final valueBuffer:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->valueBuffer:[I

    .line 20
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->configSpec:[I

    .line 28
    return-void

    .line 20
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v5, 0x0

    .line 52
    array-length v7, p3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, p3, v6

    .line 53
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 54
    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 55
    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 56
    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 57
    if-ne v8, v11, :cond_0

    if-ne v9, v11, :cond_0

    if-ne v10, v11, :cond_0

    if-nez v0, :cond_0

    .line 61
    :goto_1
    return-object v3

    .line 52
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 61
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static filterConfigSpec([I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    array-length v0, p0

    .line 74
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    .line 75
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x3040

    aput v3, v1, v2

    .line 77
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x3038

    aput v2, v1, v0

    .line 79
    return-object v1
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->valueBuffer:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->valueBuffer:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 69
    :cond_0
    return p5
.end method


# virtual methods
.method chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 31
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 32
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->configSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    aget v4, v5, v4

    .line 36
    if-gtz v4, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 41
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->configSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/google/glass/maps/service/BackgroundMapRendererConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_3
    return-object v0
.end method
