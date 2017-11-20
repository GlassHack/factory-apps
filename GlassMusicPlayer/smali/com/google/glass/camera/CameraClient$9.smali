.class Lcom/google/glass/camera/CameraClient$9;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;

.field final synthetic val$maxDurationMs:I

.field final synthetic val$maxFileSizeBytes:J


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;IJ)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iput p2, p0, Lcom/google/glass/camera/CameraClient$9;->val$maxDurationMs:I

    iput-wide p3, p0, Lcom/google/glass/camera/CameraClient$9;->val$maxFileSizeBytes:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 761
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$900(Lcom/google/glass/camera/CameraClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v1, "Could not open camera for video recording"

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 763
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 814
    :goto_0
    return-object v0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$800(Lcom/google/glass/camera/CameraClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Camera release has been requested, skip start recording."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0, v5}, Lcom/google/glass/camera/CameraClient;->access$602(Lcom/google/glass/camera/CameraClient;Z)Z

    .line 773
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1000(Lcom/google/glass/camera/CameraClient;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 775
    if-nez v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    const-string v1, "Viewfinder not available; stopping recording."

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 777
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_2
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting camera parameters for video recording."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v2, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v2, v2, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v2}, Lcom/google/glass/android/hardware/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/glass/media/CameraManager;->setDefaultVideoRecordingParameters(Landroid/hardware/Camera;)Z

    .line 784
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v1, v4}, Lcom/google/glass/camera/CameraClient;->access$102(Lcom/google/glass/camera/CameraClient;Z)Z

    .line 785
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {}, Lcom/google/glass/android/media/MediaRecorderProvider;->getInstance()Lcom/google/glass/android/media/MediaRecorderProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/android/media/MediaRecorderProvider;->get()Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/camera/CameraClient;->access$1402(Lcom/google/glass/camera/CameraClient;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v1, v0}, Lcom/google/glass/android/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :goto_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v1}, Lcom/google/glass/android/hardware/Camera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 795
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v1}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/camera/VideoWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v1}, Lcom/google/glass/camera/CameraClient;->access$1500(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 797
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->camera:Lcom/google/glass/android/hardware/Camera;

    invoke-interface {v0}, Lcom/google/glass/android/hardware/Camera;->unlock()V

    .line 798
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->cameraManager:Lcom/google/android/glass/media/CameraManager;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v1}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/media/CameraManager;->setDefaultMediaRecorderParameters(Landroid/media/MediaRecorder;)V

    .line 799
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v1}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraClient;->updateVideoRecorderOptions(Landroid/media/MediaRecorder;)V

    .line 800
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/camera/CameraClient$9;->val$maxDurationMs:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 801
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/camera/CameraClient$9;->val$maxFileSizeBytes:J

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 804
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 813
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1400(Lcom/google/glass/camera/CameraClient;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 814
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 792
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Exception while setting preview texture for camera."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 805
    :catch_1
    move-exception v0

    .line 806
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 807
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 808
    :catch_2
    move-exception v0

    .line 809
    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/glass/camera/CameraClient;->dispatchError(Ljava/lang/String;)V

    .line 810
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 758
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 819
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v1}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraListener;->onStartRecording(Lcom/google/glass/camera/Video;)V

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$9;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClient;->stopRecording()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 758
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/CameraClient$9;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
