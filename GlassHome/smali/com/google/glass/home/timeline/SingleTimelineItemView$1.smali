.class Lcom/google/glass/home/timeline/SingleTimelineItemView$1;
.super Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
.source "SingleTimelineItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/SingleTimelineItemView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/SingleTimelineItemView;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/SingleTimelineItemView;ZLcom/google/glass/app/GlassActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/SingleTimelineItemView;
    .param p2, "x0"    # Z

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;->this$0:Lcom/google/glass/home/timeline/SingleTimelineItemView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;->this$0:Lcom/google/glass/home/timeline/SingleTimelineItemView;

    invoke-static {v0, p2}, Lcom/google/glass/home/timeline/SingleTimelineItemView;->access$000(Lcom/google/glass/home/timeline/SingleTimelineItemView;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Lcom/google/glass/home/timeline/SingleTimelineItemView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Timeline item not found; dismissing self."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/google/glass/home/timeline/SingleTimelineItemView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "New timeline item content loaded; updating view."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;->this$0:Lcom/google/glass/home/timeline/SingleTimelineItemView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/SingleTimelineItemView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 73
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;->this$0:Lcom/google/glass/home/timeline/SingleTimelineItemView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/SingleTimelineItemView;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;->this$0:Lcom/google/glass/home/timeline/SingleTimelineItemView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/SingleTimelineItemView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
