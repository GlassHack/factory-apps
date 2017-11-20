.class Lcom/google/glass/camera/CameraClient$2;
.super Ljava/lang/Object;
.source "CameraClient.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/CameraClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraClient;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$2;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFirstFrameEvent(I)Z
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 281
    and-int/lit16 v0, p1, 0x3f3

    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 259
    invoke-direct {p0, p2}, Lcom/google/glass/camera/CameraClient$2;->isFirstFrameEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$2;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$100(Lcom/google/glass/camera/CameraClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$2;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClient$2;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v1}, Lcom/google/glass/camera/CameraClient;->access$200(Lcom/google/glass/camera/CameraClient;)Lcom/google/glass/camera/VideoWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraListener;->onFirstFrameReceived(Lcom/google/glass/camera/Video;)V

    .line 265
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$2;->this$0:Lcom/google/glass/camera/CameraClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/camera/CameraClient;->access$102(Lcom/google/glass/camera/CameraClient;Z)Z

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/16 v0, 0x320

    if-eq v0, p2, :cond_2

    const/16 v0, 0x321

    if-ne v0, p2, :cond_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$2;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClient;->stopRecording()V

    goto :goto_0
.end method
