.class Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;
.super Ljava/lang/Object;
.source "CameraClientV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->onSnapshotComplete(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2;->listener:Lcom/google/glass/camera/CameraListener;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraListener;->onPictureSaved(Lcom/google/glass/camera/Picture;)V

    .line 90
    iget-object v0, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Done with jpeg callback, removing picture callback client."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2;->callbacksList:Ljava/util/List;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$3;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method
