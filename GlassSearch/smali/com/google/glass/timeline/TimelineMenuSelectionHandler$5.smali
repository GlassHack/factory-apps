.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;
.super Ljava/lang/Object;
.source "TimelineMenuSelectionHandler.java"

# interfaces
.implements Lcom/google/glass/timeline/TimelineMenuSelectionHandler$OnConfirmedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->val$itemId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 3
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$300(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DELETE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 692
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemUtils;->getRedactedSource(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$200(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->val$itemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V

    .line 694
    return-void
.end method

.method public onDismissed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$5;->val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineItemDeletedListener;->onDeleteCanceled()V

    .line 701
    :cond_0
    return-void
.end method
