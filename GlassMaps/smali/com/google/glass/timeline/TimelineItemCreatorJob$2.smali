.class Lcom/google/glass/timeline/TimelineItemCreatorJob$2;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;)V
    .locals 0

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
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 242
    .line 244
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->shouldCreateTemporaryItem()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$200(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$300(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Not updating item that no longer exists."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 253
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v2, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 255
    if-nez v4, :cond_2

    .line 256
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$300(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v5, "Final item was null.  Cancelling."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 260
    :cond_2
    invoke-virtual {v4, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 261
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 262
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncProtocol()I

    move-result v2

    if-eq v2, v7, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 261
    :goto_1
    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 264
    if-nez v0, :cond_5

    .line 265
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 266
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$000(Lcom/google/glass/timeline/TimelineItemCreatorJob;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 267
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v1, v1, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    move-object v0, v4

    .line 270
    :goto_2
    return-object v0

    :cond_4
    move v2, v3

    .line 262
    goto :goto_1

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method
