.class public abstract Lcom/google/glass/camera/CameraListener;
.super Ljava/lang/Object;
.source "CameraListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCameraShutter()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method protected onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 75
    return-void
.end method

.method public onFirstFrameReceived(Lcom/google/glass/camera/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 48
    return-void
.end method

.method protected onMomentRecorded(Lcom/google/glass/camera/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 12
    return-void
.end method

.method protected onPictureCaptureComplete()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 33
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .param p1, "picture"    # Lcom/google/glass/camera/Picture;

    .prologue
    .line 26
    return-void
.end method

.method public onPreviewFrame([BJ)V
    .locals 0
    .param p1, "frame"    # [B
    .param p2, "captureTimeNanos"    # J

    .prologue
    .line 67
    return-void
.end method

.method public onStartRecording(Lcom/google/glass/camera/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 41
    return-void
.end method

.method public onStopRecording(Lcom/google/glass/camera/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 55
    return-void
.end method
