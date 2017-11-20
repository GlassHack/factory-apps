.class Lcom/google/glass/timeline/ui/TimelineView$5;
.super Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
.source "SourceFile"


# instance fields
.field lastMaxItemTimestamp:J

.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;

.field final synthetic val$cursorLoader:Landroid/content/CursorLoader;

.field final synthetic val$onLoadRunnables:Ljava/util/List;

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/android/glass/widget/CardScrollAdapter;ZLandroid/content/CursorLoader;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    iput-boolean p3, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->val$pinned:Z

    iput-object p4, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->val$cursorLoader:Landroid/content/CursorLoader;

    iput-object p5, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->val$onLoadRunnables:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;-><init>(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 669
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.glass.non-database-item-id-prefix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->val$pinned:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateQueryParameters()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 679
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->val$pinned:Z

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v0

    .line 680
    iget-wide v2, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->lastMaxItemTimestamp:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 681
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineView;->access$400()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 682
    iput-wide v0, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->lastMaxItemTimestamp:J

    .line 685
    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 686
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineView;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Updating cursor select args: [%s]"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->val$cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->val$cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 693
    :cond_0
    return-void
.end method

.method public waitForLoad(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$5;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    return-void
.end method
