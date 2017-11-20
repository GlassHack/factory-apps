.class public Lcom/google/android/apps/lightcycle/panorama/LightCycleView;
.super Landroid/opengl/GLSurfaceView;
.source "LightCycleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/LightCycleView$ProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/lightcycle/camera/CameraPreview;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "cameraPreview"    # Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    .param p3, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .param p4, "localStorage"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .param p5, "incrementalAligner"    # Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;
    .param p6, "renderer"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->setEGLContextClientVersion(I)V

    .line 45
    invoke-virtual {p0, p6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->setRenderMode(I)V

    .line 47
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;-><init>(Landroid/app/Activity;Lcom/google/android/apps/lightcycle/camera/CameraPreview;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->setClickable(Z)V

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getController()Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleView;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
