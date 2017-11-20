.class public Lcom/google/glass/camera/CameraClientV1;
.super Lcom/google/glass/camera/CameraClient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/camera/CameraClient;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 21
    return-void
.end method


# virtual methods
.method public takePicture(J)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lcom/google/glass/camera/CameraUtils;->isNormalHQEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/glass/camera/CameraClientV1;->takePictureInternal(JIZ)V

    .line 35
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method
