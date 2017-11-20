.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "TimelineItemDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->addAttachmentToTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

.field final synthetic val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$setModifiedTime:Z


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-boolean p4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$setModifiedTime:Z

    iput-object p5, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 673
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 674
    .local v0, "updatedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 675
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 677
    iget-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$setModifiedTime:Z

    if-eqz v1, :cond_0

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 682
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    return-object v1
.end method
