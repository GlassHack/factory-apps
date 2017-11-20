.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;
.super Ljava/lang/Object;
.source "ReadMoreTimelineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

.field final synthetic val$adapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

.field final synthetic val$itemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$parentItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$itemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    iput-object p4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$adapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iput-object p5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$parentItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$items:Ljava/util/List;

    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$itemLoader:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    iget-object v4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$adapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$200(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V

    .line 154
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$adapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$parentItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v1, v2, v3}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$300(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 158
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->val$adapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 159
    .local v0, "startPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;->this$1:Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    iget-object v1, v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->setSelection(I)V

    .line 163
    return-void
.end method
