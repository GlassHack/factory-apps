.class public Lcom/google/glass/util/CompositeAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/widget/SettledListener;


# instance fields
.field private final dataSetObserver:Landroid/database/DataSetObserver;

.field private final first:Lcom/google/android/glass/widget/CardScrollAdapter;

.field private final second:Lcom/google/android/glass/widget/CardScrollAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 21
    new-instance v0, Lcom/google/glass/util/CompositeAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/CompositeAdapter$1;-><init>(Lcom/google/glass/util/CompositeAdapter;)V

    iput-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 34
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 37
    iput-object p2, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 40
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 41
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 42
    return-void
.end method

.method private getView(Lcom/google/android/glass/widget/CardScrollAdapter;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/glass/widget/CardScrollAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    sget v1, Lcom/google/glass/common/R$id;->tag_composite_adapter_recycle_runnable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 122
    sget v1, Lcom/google/glass/common/R$id;->tag_composite_adapter_recycle_runnable:I

    new-instance v2, Lcom/google/glass/util/CompositeAdapter$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/util/CompositeAdapter$2;-><init>(Lcom/google/glass/util/CompositeAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 129
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAdapterForPosition(I)Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/google/glass/util/CompositeAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    .line 153
    if-ge p1, v1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 159
    :goto_2
    instance-of v1, v0, Lcom/google/glass/util/CompositeAdapter;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Lcom/google/glass/util/CompositeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CompositeAdapter;->getAdapterForPosition(I)Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    .line 162
    :cond_0
    return-object v0

    :cond_1
    move v0, v2

    .line 149
    goto :goto_0

    :cond_2
    move v1, v2

    .line 150
    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 157
    sub-int/2addr p1, v1

    goto :goto_2
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemId(I)J

    move-result-wide v0

    .line 64
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemViewType(I)I

    move-result v0

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemViewType(I)I

    move-result v0

    .line 101
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 78
    if-ltz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 82
    if-ltz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/glass/util/CompositeAdapter;->getView(Lcom/google/android/glass/widget/CardScrollAdapter;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/glass/util/CompositeAdapter;->getView(Lcom/google/android/glass/widget/CardScrollAdapter;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettled(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    instance-of v0, v0, Lcom/google/glass/widget/SettledListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    check-cast v0, Lcom/google/glass/widget/SettledListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/widget/SettledListener;->onSettled(ILandroid/view/View;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    instance-of v0, v0, Lcom/google/glass/widget/SettledListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    check-cast v0, Lcom/google/glass/widget/SettledListener;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Lcom/google/glass/widget/SettledListener;->onSettled(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public onUnsettled(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    instance-of v0, v0, Lcom/google/glass/widget/SettledListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    check-cast v0, Lcom/google/glass/widget/SettledListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/widget/SettledListener;->onUnsettled(ILandroid/view/View;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    instance-of v0, v0, Lcom/google/glass/widget/SettledListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    check-cast v0, Lcom/google/glass/widget/SettledListener;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2}, Lcom/google/glass/widget/SettledListener;->onUnsettled(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 136
    sget v0, Lcom/google/glass/common/R$id;->tag_composite_adapter_recycle_runnable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    sget v1, Lcom/google/glass/common/R$id;->tag_composite_adapter_recycle_runnable:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 139
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 141
    :cond_0
    return-void
.end method
