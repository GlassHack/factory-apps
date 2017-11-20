.class Lcom/google/glass/timeline/ui/TimelineView$1;
.super Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineView;

.field final synthetic val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

.field final synthetic val$homePositionAdapter:Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V
    .locals 1

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

    .prologue
    const/4 v0, 0x0

    .line 363
    .line 364
    const/4 v1, -0x1

    .line 365
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v2}, Lcom/google/glass/timeline/ui/TimelineView;->access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_1

    .line 366
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineView;->access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 367
    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    move v0, v1

    move v1, v2

    .line 365
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 372
    const/4 v2, 0x1

    .line 373
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-interface {v1, p1}, Lcom/google/glass/timeline/SearchableAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v1

    .line 374
    if-ltz v1, :cond_2

    .line 375
    iget-object v5, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-virtual {v5, v0}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapterOffset(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_1

    .line 380
    :cond_1
    return v1

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
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

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 350
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineView;->access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 351
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->this$0:Lcom/google/glass/timeline/ui/TimelineView;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineView;->access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 352
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v3

    .line 353
    if-ge p1, v3, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemId(I)J

    move-result-wide v0

    .line 358
    :goto_1
    return-wide v0

    .line 356
    :cond_0
    sub-int/2addr p1, v3

    .line 350
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 358
    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_1
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineView$1;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView$1;->val$contentAdapter:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 305
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
