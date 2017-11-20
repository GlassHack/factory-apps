.class Lcom/google/glass/camera/TakePictureActivity$1;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Lcom/google/glass/timeline/TimelineItemDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/TakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDelete()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onDeleteCanceled()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/camera/TakePictureActivity;->access$102(Lcom/google/glass/camera/TakePictureActivity;Z)Z

    .line 145
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$200(Lcom/google/glass/camera/TakePictureActivity;)V

    .line 146
    return-void
.end method

.method public onDeleted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 114
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, v3, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 115
    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v3

    .line 114
    invoke-virtual {v2, v3}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->computeThumbnailIndex(I)I

    move-result v0

    .line 116
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 117
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/TakePictureActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Index not in valid range [thumbnail array size=%s, index=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v5, v5, Lcom/google/glass/camera/TakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 117
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->timelineInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/camera/TimelineInfo;

    .line 123
    .local v1, "timelineInfo":Lcom/google/glass/camera/TimelineInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    .line 125
    invoke-virtual {v1}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v2, v3}, Lcom/google/glass/camera/CameraUtils;->notifyPhotoDeletion(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    :cond_3
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-boolean v2, v2, Lcom/google/glass/camera/TakePictureActivity;->shouldPreview:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailsInSession:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 129
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-virtual {v2}, Lcom/google/glass/camera/TakePictureActivity;->finishAndTurnScreenOffIfRequested()V

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v2, v6}, Lcom/google/glass/camera/TakePictureActivity;->access$102(Lcom/google/glass/camera/TakePictureActivity;Z)Z

    .line 133
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    invoke-virtual {v2}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->notifyDataSetChanged()V

    .line 135
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-boolean v2, v2, Lcom/google/glass/camera/TakePictureActivity;->shouldPreview:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$1;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, v2, Lcom/google/glass/camera/TakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v2, v6}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setVisibility(I)V

    goto :goto_0
.end method
