.class Lcom/google/glass/camera/RecordingService$VideoCameraListener;
.super Lcom/google/glass/camera/CameraListener;
.source "RecordingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/RecordingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCameraListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/RecordingService;


# direct methods
.method private constructor <init>(Lcom/google/glass/camera/RecordingService;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-direct {p0}, Lcom/google/glass/camera/CameraListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/camera/RecordingService;
    .param p2, "x1"    # Lcom/google/glass/camera/RecordingService$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/glass/camera/RecordingService$VideoCameraListener;-><init>(Lcom/google/glass/camera/RecordingService;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    invoke-static {v0, v1}, Lcom/google/glass/camera/RecordingService;->access$1000(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingService$RecordingState;)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/camera/RecordingServiceListener;->onError()V

    .line 168
    :cond_0
    return-void
.end method

.method public onFirstFrameReceived(Lcom/google/glass/camera/Video;)V
    .locals 1
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/camera/RecordingServiceListener;->onFirstFrameReceived()V

    .line 137
    :cond_0
    return-void
.end method

.method public onStartRecording(Lcom/google/glass/camera/Video;)V
    .locals 2
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

    invoke-static {v0, v1}, Lcom/google/glass/camera/RecordingService;->access$1000(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingService$RecordingState;)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/camera/RecordingServiceListener;->onRecordingStarted(Lcom/google/glass/camera/Video;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onStopRecording(Lcom/google/glass/camera/Video;)V
    .locals 3
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    invoke-static {v0, v1}, Lcom/google/glass/camera/RecordingService;->access$1000(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingService$RecordingState;)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->releaseWakeLock()V

    .line 153
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$900(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingServiceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/camera/RecordingServiceListener;->onRecordingStopped(Lcom/google/glass/camera/Video;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0, v2}, Lcom/google/glass/camera/RecordingService;->access$902(Lcom/google/glass/camera/RecordingService;Lcom/google/glass/camera/RecordingServiceListener;)Lcom/google/glass/camera/RecordingServiceListener;

    .line 159
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$VideoCameraListener;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-static {v0}, Lcom/google/glass/camera/RecordingService;->access$1100(Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/CameraClientV1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/camera/CameraClientV1;->setViewfinder(Landroid/view/TextureView;)V

    .line 160
    return-void
.end method
