.class final Lcom/google/glass/camera/TakePictureActivity$11;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->updatePictureItemWhenSaved(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/camera/Picture;Lcom/google/glass/sync/AttachmentManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$manager:Lcom/google/glass/sync/AttachmentManager;

.field final synthetic val$picture:Lcom/google/glass/camera/Picture;

.field final synthetic val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/camera/Picture;Lcom/google/glass/sync/AttachmentManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p2, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p3, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$picture:Lcom/google/glass/camera/Picture;

    iput-object p4, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$manager:Lcom/google/glass/sync/AttachmentManager;

    iput-object p5, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 955
    invoke-static {}, Lcom/google/glass/camera/TakePictureActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Attaching saved image to timeline item: %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 958
    .local v1, "latestItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 959
    :cond_0
    invoke-static {}, Lcom/google/glass/camera/TakePictureActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Not updating item that no longer exists."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    :goto_0
    return-object v3

    .line 965
    :cond_1
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 966
    invoke-virtual {v1, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 969
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 970
    invoke-static {}, Lcom/google/glass/camera/TakePictureActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Changing sync protocol from NEVER to OPPORTUNISTIC for item: %s"

    new-array v6, v9, [Ljava/lang/Object;

    .line 971
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 970
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    invoke-virtual {v1, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 976
    :cond_2
    sget-object v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v4, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 977
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 978
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 980
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$picture:Lcom/google/glass/camera/Picture;

    invoke-virtual {v4}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 981
    const-string v4, "image/jpeg"

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 982
    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 985
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$manager:Lcom/google/glass/sync/AttachmentManager;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$picture:Lcom/google/glass/camera/Picture;

    .line 986
    invoke-virtual {v5}, Lcom/google/glass/camera/Picture;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/camera/CameraUtils;->maybeStoreToAttachmentManager(Lcom/google/glass/sync/AttachmentManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, "localAttachmentId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 988
    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 992
    :cond_3
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 993
    invoke-virtual {v4, v1, v3, v8}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    .line 996
    .local v3, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v4, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/camera/TakePictureActivity$11;->val$timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-static {v4, v5, v3}, Lcom/google/glass/timeline/CameraBundleHelper;->updateBundleIfNecessary(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method
