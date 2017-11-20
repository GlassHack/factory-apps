.class Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$2;
.super Ljava/lang/Object;
.source "CameraClientV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->onPostview(ILandroid/graphics/Bitmap;)V
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
    .line 54
    iput-object p1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$2;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$2;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->this$0:Lcom/google/glass/camera/CameraClientV2;

    iget-object v0, v0, Lcom/google/glass/camera/CameraClientV2;->listener:Lcom/google/glass/camera/CameraListener;

    iget-object v1, p0, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl$2;->this$1:Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;

    iget-object v1, v1, Lcom/google/glass/camera/CameraClientV2$GcamCallbacksImpl;->picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraListener;->onPictureTaken(Lcom/google/glass/camera/Picture;)V

    .line 58
    return-void
.end method
