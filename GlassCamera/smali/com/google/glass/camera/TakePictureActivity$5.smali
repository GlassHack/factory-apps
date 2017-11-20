.class Lcom/google/glass/camera/TakePictureActivity$5;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Lcom/google/glass/composite/CompositeBuilder$CompositeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->makeVignette(Lcom/google/glass/camera/Picture;)Z
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
    .line 522
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositeReady(Landroid/graphics/Bitmap;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 6
    .param p1, "composite"    # Landroid/graphics/Bitmap;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v4, 0x1

    .line 525
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/glass/camera/TakePictureActivity;->isMakingVignette:Z

    .line 528
    new-instance v1, Lcom/google/glass/camera/Picture;

    invoke-direct {v1, p1}, Lcom/google/glass/camera/Picture;-><init>(Landroid/graphics/Bitmap;)V

    .line 529
    .local v1, "vignette":Lcom/google/glass/camera/Picture;
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v0, Lcom/google/glass/camera/TimelineInfo;

    invoke-direct {v0, p2}, Lcom/google/glass/camera/TimelineInfo;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 532
    .local v0, "info":Lcom/google/glass/camera/TimelineInfo;
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$5;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v3}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/glass/camera/TakePictureActivity;->access$700(Lcom/google/glass/camera/TakePictureActivity;I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/camera/TimelineInfo;->setVignette(Lcom/google/glass/camera/TimelineInfo;)V

    .line 537
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    .line 538
    invoke-static {v3}, Lcom/google/glass/camera/TakePictureActivity;->access$800(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    .line 537
    invoke-static {p2, v4, v2, v3}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->validateAndEnqueueItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 541
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    invoke-virtual {v2}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->notifyDataSetChanged()V

    .line 543
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/TakePictureActivity;->activateThumbnailScrollView()V

    .line 545
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v2, v4}, Lcom/google/glass/camera/TakePictureActivity;->toggleNudgeAndScreenTimeout(Z)V

    .line 548
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, v3, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/camera/TakePictureActivity;->isOnOlderThumbnailCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, v3, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v2, p1}, Lcom/google/glass/camera/TakePictureActivity;->access$900(Lcom/google/glass/camera/TakePictureActivity;Landroid/graphics/Bitmap;)V

    .line 554
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/TakePictureActivity;->access$1000(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 555
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/TakePictureActivity;->access$1000(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/glass/widget/Slider$Indeterminate;->hide()V

    .line 556
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/camera/TakePictureActivity;->access$1002(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/android/glass/widget/Slider$Indeterminate;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 560
    :cond_1
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->isFinalPictureSaved()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 561
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$5;->val$picture:Lcom/google/glass/camera/Picture;

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$5;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v4}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v4

    invoke-static {v2, v3, p2, v4, v5}, Lcom/google/glass/camera/TakePictureActivity;->access$1100(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)V

    .line 564
    :cond_2
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v2}, Lcom/google/glass/camera/TakePictureActivity;->access$200(Lcom/google/glass/camera/TakePictureActivity;)V

    .line 565
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/glass/camera/TakePictureActivity;->isMakingVignette:Z

    .line 570
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$1000(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$1000(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/glass/widget/Slider$Indeterminate;->hide()V

    .line 572
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/camera/TakePictureActivity;->access$1002(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/android/glass/widget/Slider$Indeterminate;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$200(Lcom/google/glass/camera/TakePictureActivity;)V

    .line 576
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$5;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/TakePictureActivity;->activateThumbnailScrollView()V

    .line 577
    return-void
.end method
