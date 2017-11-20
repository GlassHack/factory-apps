.class Lcom/google/glass/timeline/ui/TimelineView$3;
.super Ljava/lang/Object;
.source "TimelineView.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineView;->createRemainingContentListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineView;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$3;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 8
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "clipped"    # Z

    .prologue
    const/4 v5, 0x0

    .line 484
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lcom/google/glass/timeline/ui/TimelineView$3;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-virtual {v6}, Lcom/google/glass/timeline/ui/TimelineView;->getChildCount()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 489
    iget-object v6, p0, Lcom/google/glass/timeline/ui/TimelineView$3;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-virtual {v6, v0}, Lcom/google/glass/timeline/ui/TimelineView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 490
    .local v4, "view":Landroid/view/View;
    sget v6, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 491
    .local v3, "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    if-nez v3, :cond_1

    move-object v1, v5

    .line 492
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 493
    if-eqz p2, :cond_2

    .line 494
    sget v5, Lcom/google/glass/common/R$id;->tag_item_read_more:I

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 501
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    :goto_2
    return-void

    .line 491
    .restart local v3    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v3}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    goto :goto_1

    .line 496
    .restart local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    sget v6, Lcom/google/glass/common/R$id;->tag_item_read_more:I

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 488
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
