.class Lcom/google/glass/timeline/TimelineItemCreatorJob$1;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

.field final synthetic val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 213
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncProtocol()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$000(Lcom/google/glass/timeline/TimelineItemCreatorJob;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 218
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v1, v1, Lcom/google/glass/timeline/TimelineItemCreatorJob;->databaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 219
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method
