.class Lcom/google/glass/camera/CameraClient$10;
.super Landroid/os/AsyncTask;
.source "CameraClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraClient;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/glass/camera/Video;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraClient;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/glass/camera/Video;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 838
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 839
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Stop the video recorder."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 848
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2, v6}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 854
    :goto_0
    const/4 v1, 0x0

    .line 855
    .local v1, "stoppedVideo":Lcom/google/glass/camera/Video;
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 856
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Stop the video after video recording stopped."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v3, v3, Lcom/google/glass/camera/CameraClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/VideoWrapper;->stop(Landroid/content/Context;)V

    .line 858
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v1

    .line 859
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2, v6}, Lcom/google/glass/camera/CameraClient;->access$202(Lcom/google/glass/camera/CameraClient;Lcom/google/glass/camera/VideoWrapper;)Lcom/google/glass/camera/VideoWrapper;

    .line 862
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    if-eqz v2, :cond_3

    .line 863
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Release the camera after video recording stopped."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v2}, Lcom/google/glass/android/hardware/Camera;->lock()V

    .line 865
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v2}, Lcom/google/glass/android/hardware/Camera;->release()V

    .line 866
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iput-object v6, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    .line 871
    :goto_1
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$400(Lcom/google/glass/camera/CameraClient;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 872
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Release preview surface after video recording stopped."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v2}, Lcom/google/glass/camera/CameraClient;->releaseDestroyedPreviewSurface()V

    .line 876
    :cond_1
    return-object v1

    .line 842
    .end local v1    # "stoppedVideo":Lcom/google/glass/camera/Video;
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Illegal state when stopping media recorder."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 848
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2, v6}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    goto/16 :goto_0

    .line 844
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Runtime exception when stopping media recorder."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 847
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 848
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2, v6}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    goto/16 :goto_0

    .line 847
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v3}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 848
    iget-object v3, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v3, v6}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    throw v2

    .line 851
    :cond_2
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Video recorder has already been stopped."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 868
    .restart local v1    # "stoppedVideo":Lcom/google/glass/camera/Video;
    :cond_3
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Camera is already null."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 835
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$10;->doInBackground([Ljava/lang/Void;)Lcom/google/glass/camera/Video;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/glass/camera/Video;)V
    .locals 2
    .param p1, "stoppedVideo"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 882
    if-eqz p1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraClient;->access$1300(Lcom/google/glass/camera/CameraClient;Z)V

    .line 884
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/CameraListener;->onStopRecording(Lcom/google/glass/camera/Video;)V

    .line 886
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 835
    check-cast p1, Lcom/google/glass/camera/Video;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$10;->onPostExecute(Lcom/google/glass/camera/Video;)V

    return-void
.end method
