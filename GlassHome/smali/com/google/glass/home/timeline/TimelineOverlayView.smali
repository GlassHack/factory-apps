.class public final Lcom/google/glass/home/timeline/TimelineOverlayView;
.super Lcom/google/glass/widget/FastScrollOverlay;
.source "TimelineOverlayView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/timeline/ui/TimelineView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "timelineView"    # Lcom/google/glass/timeline/ui/TimelineView;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/widget/FastScrollOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/android/glass/widget/CardScrollView;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "timelineView"    # Lcom/google/glass/timeline/ui/TimelineView;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/timeline/ui/TimelineView;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timelineView"    # Lcom/google/glass/timeline/ui/TimelineView;

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/timeline/ui/TimelineView;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getHomePositionLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$string;->timeline_overlay_label_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForItem(Landroid/view/View;I)Ljava/lang/String;
    .locals 13
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 41
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 42
    .local v9, "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    invoke-virtual {v9}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v8

    .line 43
    .local v8, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 45
    .local v3, "currentTime":J
    sget v0, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 46
    .local v10, "text":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getScrollView()Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v6

    .line 51
    .local v6, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    if-nez v6, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 65
    .end local v6    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :goto_0
    return-object v0

    .line 55
    .restart local v6    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v0

    if-le p2, v0, :cond_2

    move v7, v5

    .line 56
    .local v7, "allowPast":Z
    :goto_1
    invoke-static {v8}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v1

    .line 58
    .local v1, "displayTime":J
    const-wide/16 v11, 0x0

    cmp-long v0, v1, v11

    if-eqz v0, :cond_1

    if-nez v7, :cond_3

    cmp-long v0, v1, v3

    if-gez v0, :cond_3

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getHomePositionLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    .end local v1    # "displayTime":J
    .end local v7    # "allowPast":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 62
    .restart local v1    # "displayTime":J
    .restart local v7    # "allowPast":Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v10

    .line 63
    sget v0, Lcom/google/glass/home/R$id;->tag_item_time_label_text:I

    invoke-virtual {p1, v0, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .end local v1    # "displayTime":J
    .end local v6    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    .end local v7    # "allowPast":Z
    :cond_4
    move-object v0, v10

    .line 65
    goto :goto_0
.end method

.method protected isLabelReady(Landroid/view/View;)Z
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 75
    sget v0, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setRunnableForWhenLabelReady(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    sget v0, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    sget v0, Lcom/google/glass/home/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    :cond_0
    return-void
.end method
