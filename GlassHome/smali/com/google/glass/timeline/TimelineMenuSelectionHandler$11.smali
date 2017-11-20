.class Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "TimelineMenuSelectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
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
    .line 1007
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->val$userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1012
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 1014
    .local v0, "clearPin":Z
    :goto_0
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$200(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->val$userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 1015
    .local v1, "result":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$500(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 1019
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler$11;->this$0:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->access$000(Lcom/google/glass/timeline/TimelineMenuSelectionHandler;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v4, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {v3, v4, v2}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 1021
    return-object v1

    .end local v0    # "clearPin":Z
    .end local v1    # "result":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    move v0, v2

    .line 1012
    goto :goto_0
.end method
