.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field final synthetic val$tombstone:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->val$tombstone:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5

    .prologue
    .line 387
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 388
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 389
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->val$tombstone:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZLcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method
