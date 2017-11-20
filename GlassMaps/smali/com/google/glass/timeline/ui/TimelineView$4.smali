.class Lcom/google/glass/timeline/ui/TimelineView$4;
.super Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;

.field final synthetic val$onLoadRunnables:Ljava/util/List;

.field final synthetic val$timelineItemAdapter:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;ZLjava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$4;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    iput-object p3, p0, Lcom/google/glass/timeline/ui/TimelineView$4;->val$timelineItemAdapter:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/glass/timeline/ui/TimelineView$4;->val$onLoadRunnables:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 637
    invoke-super {p0, p1, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 640
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineView;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "New timeline database content loaded; updating views."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$4;->val$timelineItemAdapter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->notifyDataSetChanged()V

    .line 644
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$4;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 645
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$4;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 648
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 632
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/ui/TimelineView$4;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
