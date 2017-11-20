.class public Lcom/google/glass/camera/CameraClientV2;
.super Lcom/google/glass/camera/CameraClient;
.source "CameraClientV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;
    }
.end annotation


# instance fields
.field protected final callbacksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final gcamModule:Lcom/google/android/glass/gcamservice/GcamModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Lcom/google/android/glass/media/CameraManager;
    .param p3, "listener"    # Lcom/google/glass/camera/CameraListener;
    .param p4, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/camera/CameraClient;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/CameraClientV2;->callbacksList:Ljava/util/List;

    .line 105
    invoke-static {p1}, Lcom/google/android/glass/gcamservice/GcamModule;->from(Landroid/content/Context;)Lcom/google/android/glass/gcamservice/GcamModule;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/CameraClientV2;->gcamModule:Lcom/google/android/glass/gcamservice/GcamModule;

    .line 106
    return-void
.end method


# virtual methods
.method public takePicture(J)V
    .locals 5
    .param p1, "lastPreloadTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "takePicture() called with v2 Gcam."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/google/android/glass/media/CameraManager;->preload(I)V

    .line 124
    invoke-static {}, Lcom/google/glass/camera/CameraUtils;->isNormalHQEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Normal HQ enabled."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0, p1, p2, v4, v4}, Lcom/google/glass/camera/CameraClientV2;->takePictureInternal(JIZ)V

    .line 148
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->gcamModule:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-virtual {v1}, Lcom/google/android/glass/gcamservice/GcamModule;->isGcamReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Gcam is not ready."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0, p1, p2, v4, v4}, Lcom/google/glass/camera/CameraClientV2;->takePictureInternal(JIZ)V

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->fileSaver:Lcom/google/glass/util/FileSaver;

    iget v2, p0, Lcom/google/glass/camera/CameraClientV2;->pictureId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;-><init>(Lcom/google/glass/camera/CameraClientV2;Lcom/google/glass/util/FileSaver;I)V

    .line 136
    .local v0, "callbacks":Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->callbacksList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/camera/Picture;->setRequestTime(J)V

    .line 140
    iget-object v1, v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/camera/Picture;->setPrepareCameraSavings(J)V

    .line 141
    iget-object v1, v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/Picture;->setIsGcam(Z)V

    .line 143
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->gcamModule:Lcom/google/android/glass/gcamservice/GcamModule;

    iget-object v2, v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/glass/gcamservice/GcamModule;->takePicture(Lcom/google/android/glass/gcamservice/GcamModule$GcamCallbacks;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2;->listener:Lcom/google/glass/camera/CameraListener;

    invoke-virtual {v1}, Lcom/google/glass/camera/CameraListener;->onPictureCaptureComplete()V

    goto :goto_0
.end method
