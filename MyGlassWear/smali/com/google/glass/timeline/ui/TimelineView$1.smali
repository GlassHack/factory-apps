.class Lcom/google/glass/timeline/ui/TimelineView$1;
.super Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;

.field final synthetic val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

.field final synthetic val$homePositionAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineView;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    iput-object p3, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$homePositionAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;-><init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/glass/timeline/ui/TimelineView$1;)V

    return-void
.end method


# virtual methods
.method public findPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 6
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "matched":Z
    const/4 v3, -0x1

    .line 365
    .local v3, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v5}, Lcom/google/glass/timeline/ui/TimelineView;->access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 366
    iget-object v5, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v5}, Lcom/google/glass/timeline/ui/TimelineView;->access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 367
    .local v4, "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    if-eqz v1, :cond_1

    .line 369
    invoke-virtual {v4, p1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 365
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v4, p1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    const/4 v1, 0x1

    .line 373
    invoke-virtual {v4}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v5

    check-cast v5, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-interface {v5, p1}, Lcom/google/glass/timeline/SearchableAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v3

    .line 374
    if-ltz v3, :cond_0

    .line 375
    iget-object v5, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-virtual {v5, v4}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapterOffset(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .line 380
    .end local v4    # "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    :cond_2
    return v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$homePositionAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$homePositionAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapterOffset(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$homePositionAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 338
    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;->getHomePosition()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 350
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v4}, Lcom/google/glass/timeline/ui/TimelineView;->access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 351
    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v4}, Lcom/google/glass/timeline/ui/TimelineView;->access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 352
    .local v3, "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    invoke-virtual {v3}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    .line 353
    .local v0, "count":I
    if-ge p1, v0, :cond_0

    .line 354
    invoke-virtual {v3}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemId(I)J

    move-result-wide v4

    .line 358
    .end local v0    # "count":I
    .end local v3    # "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    :goto_1
    return-wide v4

    .line 356
    .restart local v0    # "count":I
    .restart local v3    # "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    :cond_0
    sub-int/2addr p1, v0

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "count":I
    .end local v3    # "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_1
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 385
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineView$1;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 306
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->recycleView(Landroid/view/View;)V

    .line 317
    return-void
.end method
