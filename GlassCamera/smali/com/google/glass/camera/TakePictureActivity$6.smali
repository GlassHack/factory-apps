.class Lcom/google/glass/camera/TakePictureActivity$6;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->updateFinalVignette(Lcom/google/glass/camera/Picture;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$6;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$6;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositeReady(Landroid/graphics/Bitmap;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 4
    .param p1, "composite"    # Landroid/graphics/Bitmap;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 601
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$6;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$6;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->access$700(Lcom/google/glass/camera/TakePictureActivity;I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    .line 603
    .local v0, "pictureInfo":Lcom/google/glass/camera/TimelineInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->getVignette()Lcom/google/glass/camera/TimelineInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$6;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->getVignette()Lcom/google/glass/camera/TimelineInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/google/glass/camera/TakePictureActivity;->access$1200(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 609
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 611
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$6;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, v1, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    invoke-virtual {v1}, Lcom/google/glass/vignette/VignetteHelper;->recycle()V

    .line 613
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$6;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$6;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    .line 614
    invoke-static {v3}, Lcom/google/glass/camera/TakePictureActivity;->access$800(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    .line 613
    invoke-static {p2, v1, v2, v3}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->validateAndEnqueueItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    goto :goto_0
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$6;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/TakePictureActivity;->vignetteHelper:Lcom/google/glass/vignette/VignetteHelper;

    invoke-virtual {v0}, Lcom/google/glass/vignette/VignetteHelper;->recycle()V

    .line 621
    return-void
.end method
