.class Lcom/google/glass/camera/CameraClient$10;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/glass/camera/Video;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 838
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Stop the video recorder."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 848
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 855
    :goto_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 856
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Stop the video after video recording stopped."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/glass/camera/VideoWrapper;->stop(Landroid/content/Context;)V

    .line 858
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v0

    .line 859
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2, v1}, Lcom/google/glass/camera/CameraClient;->access$202(Lcom/google/glass/camera/CameraClient;Lcom/google/glass/camera/VideoWrapper;)Lcom/google/glass/camera/VideoWrapper;

    .line 862
    :goto_1
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    if-eqz v2, :cond_2

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

    iput-object v1, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    .line 871
    :goto_2
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v1}, Lcom/google/glass/camera/CameraClient;->access$400(Lcom/google/glass/camera/CameraClient;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Release preview surface after video recording stopped."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v1}, Lcom/google/glass/camera/CameraClient;->releaseDestroyedPreviewSurface()V

    .line 876
    :cond_0
    return-object v0

    .line 843
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Illegal state when stopping media recorder."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 848
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    goto/16 :goto_0

    .line 845
    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Runtime exception when stopping media recorder."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 847
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 848
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    goto/16 :goto_0

    .line 847
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 848
    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v2, v1}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    throw v0

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Video recorder has already been stopped."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 868
    :cond_2
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$10;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Camera is already null."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
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
