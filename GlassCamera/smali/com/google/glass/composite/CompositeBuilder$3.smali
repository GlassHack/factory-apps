.class Lcom/google/glass/composite/CompositeBuilder$3;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "CompositeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/composite/CompositeBuilder;->updateFullTimelineItem(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/composite/CompositeBuilder;

.field final synthetic val$fullFilePath:Ljava/lang/String;

.field final synthetic val$previewItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/composite/CompositeBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/composite/CompositeBuilder;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/glass/composite/CompositeBuilder$3;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    iput-object p2, p0, Lcom/google/glass/composite/CompositeBuilder$3;->val$previewItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/composite/CompositeBuilder$3;->val$fullFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 398
    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder$3;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-static {v3}, Lcom/google/glass/composite/CompositeBuilder;->access$300(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/composite/CompositeBuilder$3;->val$previewItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 400
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder$3;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-virtual {v3}, Lcom/google/glass/composite/CompositeBuilder;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Not updating item that no longer exists."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :goto_0
    return-object v2

    .line 406
    :cond_1
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 409
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 410
    invoke-virtual {v1, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 412
    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v3, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 414
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 415
    .local v0, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder$3;->val$fullFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 416
    const-string v3, "image/jpeg"

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 417
    invoke-static {v1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 419
    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder$3;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-static {v3}, Lcom/google/glass/composite/CompositeBuilder;->access$300(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 422
    .local v2, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v3, p0, Lcom/google/glass/composite/CompositeBuilder$3;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-static {v3}, Lcom/google/glass/composite/CompositeBuilder;->access$400(Lcom/google/glass/composite/CompositeBuilder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/composite/CompositeBuilder$3;->this$0:Lcom/google/glass/composite/CompositeBuilder;

    invoke-static {v4}, Lcom/google/glass/composite/CompositeBuilder;->access$300(Lcom/google/glass/composite/CompositeBuilder;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/google/glass/timeline/CameraBundleHelper;->updateBundleIfNecessary(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method
