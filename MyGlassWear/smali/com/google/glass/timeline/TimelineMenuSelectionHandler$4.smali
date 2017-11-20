.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "TimelineMenuSelectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;->val$userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 655
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 656
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$200(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$4;->val$userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method
