.class Lcom/google/glass/timeline/ui/TimelineView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$3;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 484
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 488
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineView$3;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineView;->getChildCount()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 489
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$3;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-virtual {v0, v2}, Lcom/google/glass/timeline/ui/TimelineView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 490
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {v4, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 491
    if-nez v0, :cond_1

    move-object v0, v1

    .line 492
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    if-eqz p2, :cond_2

    .line 494
    sget v0, Lcom/google/glass/common/R$id;->tag_item_read_more:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 501
    :cond_0
    :goto_2
    return-void

    .line 491
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    goto :goto_1

    .line 496
    :cond_2
    sget v0, Lcom/google/glass/common/R$id;->tag_item_read_more:I

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 488
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
