.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "TimelineItemDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->addAttachmentToTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;Lcom/google/googlex/glass/common/proto/nano/UserAction;ZZ)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$action:Lcom/google/googlex/glass/common/proto/nano/UserAction;

.field final synthetic val$attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

.field final synthetic val$setModifiedTime:Z


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;ZLcom/google/googlex/glass/common/proto/nano/UserAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$item:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    iput-boolean p4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$setModifiedTime:Z

    iput-object p5, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$action:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 675
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$item:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v0

    .line 676
    .local v0, "updatedItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$attachment:Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;)V

    .line 677
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 679
    iget-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$setModifiedTime:Z

    if-eqz v1, :cond_0

    .line 680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$7;->val$action:Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/UserAction;Z)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v1

    return-object v1
.end method
