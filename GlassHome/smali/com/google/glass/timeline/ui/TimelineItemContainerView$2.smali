.class Lcom/google/glass/timeline/ui/TimelineItemContainerView$2;
.super Ljava/lang/Object;
.source "TimelineItemContainerView.java"

# interfaces
.implements Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineItemContainerView;->startListeningToSyncStateAndUpdateIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$2;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSyncing(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$2;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->access$100(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$2;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->access$100(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 442
    .local v0, "isSyncingNow":Z
    :goto_0
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$2;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$2;->this$0:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->access$100(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->access$200(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    .line 443
    return-void

    .line 441
    .end local v0    # "isSyncingNow":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
