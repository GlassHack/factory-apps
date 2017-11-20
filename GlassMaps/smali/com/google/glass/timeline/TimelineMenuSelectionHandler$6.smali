.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

.field final synthetic val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;->val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$200(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;->val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 774
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$6;->val$finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method
