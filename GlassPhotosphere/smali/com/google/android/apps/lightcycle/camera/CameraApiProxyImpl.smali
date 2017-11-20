.class public Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl;
.super Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;
.source "CameraApiProxyImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public openBackCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 109
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 112
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;

    invoke-direct {v1, v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyImpl$CameraProxyImpl;-><init>(Landroid/hardware/Camera;)V

    goto :goto_0
.end method
