.class Lcom/google/glass/camera/TakePictureActivity$8;
.super Lcom/google/glass/async/SerialAsyncTask;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->onPictureSaved(Lcom/google/glass/camera/Picture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/async/SerialAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;Lcom/google/glass/camera/Picture;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$8;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-direct {p0}, Lcom/google/glass/async/SerialAsyncTask;-><init>()V

    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$8;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 758
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v1, :cond_0

    .line 759
    const/4 v0, 0x0

    .line 767
    :goto_0
    return-object v0

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    .line 763
    invoke-static {v2}, Lcom/google/glass/camera/TakePictureActivity;->access$1300(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$8;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$8;->val$picture:Lcom/google/glass/camera/Picture;

    new-instance v5, Lcom/google/glass/sync/AttachmentManager;

    iget-object v6, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    .line 764
    invoke-virtual {v6}, Lcom/google/glass/camera/TakePictureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/sync/AttachmentManager;-><init>(Landroid/content/Context;)V

    .line 762
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/glass/camera/TakePictureActivity;->updatePictureItemWhenSaved(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/camera/Picture;Lcom/google/glass/sync/AttachmentManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 765
    .local v0, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v3, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    .line 766
    invoke-static {v3}, Lcom/google/glass/camera/TakePictureActivity;->access$800(Lcom/google/glass/camera/TakePictureActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    .line 765
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/camera/photosync/PhotoSyncHelper;->validateAndEnqueueItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    goto :goto_0
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 741
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/TakePictureActivity$8;->serialDoInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 4
    .param p1, "result"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 778
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$8;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->access$700(Lcom/google/glass/camera/TakePictureActivity;I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    .line 779
    .local v0, "info":Lcom/google/glass/camera/TimelineInfo;
    if-nez v0, :cond_1

    .line 780
    invoke-static {}, Lcom/google/glass/camera/TakePictureActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "There is no TimelineInfo that has a matching picture id. The item may have already been deleted by the user."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    if-nez p1, :cond_2

    .line 783
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$8;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->access$2000(Lcom/google/glass/camera/TakePictureActivity;I)V

    .line 784
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-boolean v1, v1, Lcom/google/glass/camera/TakePictureActivity;->shouldPreview:Z

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v1, v1, Lcom/google/glass/camera/TakePictureActivity;->thumbnailScrollAdapter:Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;

    invoke-virtual {v1}, Lcom/google/glass/camera/ui/ThumbnailScrollAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/glass/camera/TimelineInfo;->setItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 741
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, p1}, Lcom/google/glass/camera/TakePictureActivity$8;->serialOnPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 4

    .prologue
    .line 746
    iget-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v2, p0, Lcom/google/glass/camera/TakePictureActivity$8;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v2}, Lcom/google/glass/camera/Picture;->getIdInSession()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/glass/camera/TakePictureActivity;->access$700(Lcom/google/glass/camera/TakePictureActivity;I)Lcom/google/glass/camera/TimelineInfo;

    move-result-object v0

    .line 747
    .local v0, "info":Lcom/google/glass/camera/TimelineInfo;
    if-nez v0, :cond_0

    .line 748
    invoke-static {}, Lcom/google/glass/camera/TakePictureActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "There is no TimelineInfo that has a matching picture id. The item may have already been deleted by the user."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/TimelineInfo;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/camera/TakePictureActivity$8;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method
