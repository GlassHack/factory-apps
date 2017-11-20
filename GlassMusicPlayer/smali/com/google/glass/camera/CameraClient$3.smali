.class Lcom/google/glass/camera/CameraClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$3;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$3;->this$0:Lcom/google/glass/camera/CameraClient;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClient;->listener:Lcom/google/glass/camera/CameraListener;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/glass/camera/CameraListener;->onPreviewFrame([BJ)V

    .line 381
    return-void
.end method
