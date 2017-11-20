.class final Lcom/google/glass/camera/TakePictureActivity$10;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->updatePictureItemWhenTaken(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/util/CachedFilesManager;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/camera/Picture;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;

.field final synthetic val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/Picture;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$picture:Lcom/google/glass/camera/Picture;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    iput-object p4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p5, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8

    .prologue
    .line 895
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v4}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 897
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 898
    .local v2, "pictureFileName":Ljava/lang/String;
    new-instance v4, Lcom/google/glass/camera/CameraUtils;

    invoke-direct {v4}, Lcom/google/glass/camera/CameraUtils;-><init>()V

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/glass/camera/CameraUtils;->saveThumbnailToCachedFiles(Lcom/google/glass/util/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 903
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 904
    const-string v4, "image/jpeg"

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 906
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v4, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 909
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 910
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getCaptureTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 913
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->PHOTO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 914
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.glass.camera.PHOTO_DELETED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertPostDeleteIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    .line 917
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v6, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v4, v5, v6}, Lcom/google/glass/timeline/CameraBundleHelper;->updateBundleIfNecessary(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 919
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$10;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v4
.end method
