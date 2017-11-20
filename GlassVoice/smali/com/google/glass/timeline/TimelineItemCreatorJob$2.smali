.class Lcom/google/glass/timeline/TimelineItemCreatorJob$2;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "TimelineItemCreatorJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateFinalItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemCreatorJob;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 242
    const/4 v2, 0x0

    .line 244
    .local v2, "latestTemporaryItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->shouldCreateTemporaryItem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v3, v3, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v5}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$200(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$300(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "Not updating item that no longer exists."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v3, v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 255
    .local v1, "finalItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v1, :cond_2

    .line 256
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$300(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "Final item was null.  Cancelling."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 260
    :cond_2
    invoke-virtual {v1, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 261
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 262
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncProtocol()I

    move-result v3

    if-eq v3, v7, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 261
    :goto_0
    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 264
    if-nez v2, :cond_5

    .line 265
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 266
    .local v0, "action":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$000(Lcom/google/glass/timeline/TimelineItemCreatorJob;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 267
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v3, v3, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 270
    .end local v0    # "action":Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v1    # "finalItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_1
    return-object v1

    .restart local v1    # "finalItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    move v3, v4

    .line 262
    goto :goto_0

    .line 270
    :cond_5
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v3, v3, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    goto :goto_1
.end method
