.class Lcom/google/glass/home/timeline/MainTimelineActivity$6;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->goToTimeline(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

.field final synthetic val$animate:Z

.field final synthetic val$bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$itemId:Lcom/google/glass/timeline/TimelineItemId;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;ZLandroid/content/Intent;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iput-object p2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    iput-boolean p4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$animate:Z

    iput-object p5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$intent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 528
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Have new data; will try again to start at item: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    iget-boolean v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$animate:Z

    invoke-static {v0, v1, v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$500(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/timeline/TimelineItemId;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Found the target item."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->val$bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;Landroid/content/Intent;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 542
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Notification item not found, going to home item. This should not happen."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v0, v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    iget-object v1, v1, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(I)V

    goto :goto_0
.end method
