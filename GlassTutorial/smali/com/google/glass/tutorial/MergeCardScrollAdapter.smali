.class public Lcom/google/glass/tutorial/MergeCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "MergeCardScrollAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/glass/widget/SettledListener;


# instance fields
.field private final adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

.field private observer:Landroid/database/DataSetObserver;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 4
    .param p1, "adapters"    # [Lcom/google/android/glass/widget/CardScrollAdapter;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 20
    new-instance v1, Lcom/google/glass/tutorial/MergeCardScrollAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/glass/tutorial/MergeCardScrollAdapter$1;-><init>(Lcom/google/glass/tutorial/MergeCardScrollAdapter;)V

    iput-object v1, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->observer:Landroid/database/DataSetObserver;

    .line 35
    iput-object p1, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 36
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 37
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    instance-of v3, v0, Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v3, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given adapter must be instance of OnItemClickListener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v3}, Lcom/google/android/glass/widget/CardScrollAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v3, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 154
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->areAllItemsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :goto_1
    return v1

    .line 153
    .restart local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "count":I
    iget-object v3, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 61
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 68
    iget-object v2, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 69
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    sub-int/2addr p1, v4

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "otherViewTypeCount":I
    iget-object v4, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 94
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 102
    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemViewType(I)I

    move-result v2

    .line 103
    .local v2, "type":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .end local v2    # "type":I
    :goto_1
    return v2

    .restart local v2    # "type":I
    :cond_0
    add-int/2addr v2, v1

    goto :goto_1

    .line 105
    .end local v2    # "type":I
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getViewTypeCount()I

    move-result v6

    add-int/2addr v1, v6

    .line 106
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v6

    sub-int/2addr p1, v6

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 7
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "posAdd":I
    iget-object v4, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 48
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 49
    .local v1, "foundPos":I
    if-ltz v1, :cond_0

    .line 50
    add-int v3, v1, v2

    .line 54
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    .end local v1    # "foundPos":I
    :goto_1
    return v3

    .line 52
    .restart local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    .restart local v1    # "foundPos":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v6

    add-int/2addr v2, v6

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    .end local v1    # "foundPos":I
    :cond_1
    const/high16 v3, -0x80000000

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 81
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 82
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    sub-int/2addr p1, v4

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 6

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "count":I
    iget-object v3, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 116
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_0
    return v1
.end method

.method public hasStableIds()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v3, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 176
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v5

    if-nez v5, :cond_0

    .line 180
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :goto_1
    return v1

    .line 175
    .restart local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 163
    iget-object v2, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 164
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->isEnabled(I)Z

    move-result v1

    return v1

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    sub-int/2addr p1, v4

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v6, v1, v0

    .line 186
    .local v6, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v6}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v3

    if-ge p3, v3, :cond_0

    move-object v0, v6

    .line 187
    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v6    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public onSettled(ILandroid/view/View;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v2, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 124
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 125
    instance-of v1, v0, Lcom/google/glass/widget/SettledListener;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lcom/google/glass/widget/SettledListener;

    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/glass/widget/SettledListener;->onSettled(ILandroid/view/View;)V

    .line 128
    :cond_0
    return-void

    .line 130
    .restart local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    sub-int/2addr p1, v4

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public onUnsettled(ILandroid/view/View;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/google/glass/tutorial/MergeCardScrollAdapter;->adapters:[Lcom/google/android/glass/widget/CardScrollAdapter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 139
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 140
    instance-of v1, v0, Lcom/google/glass/widget/SettledListener;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lcom/google/glass/widget/SettledListener;

    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/glass/widget/SettledListener;->onUnsettled(ILandroid/view/View;)V

    .line 143
    :cond_0
    return-void

    .line 145
    .restart local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    sub-int/2addr p1, v4

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method
