.class public Lcom/google/android/youtube/core/ui/PagedGridView;
.super Lcom/google/android/youtube/core/ui/BasePagedView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/PagedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 37
    sget v0, Lcom/google/android/youtube/R$layout;->paged_grid_view:I

    sget v1, Lcom/google/android/youtube/R$style;->PagedGridView:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    .line 42
    sget-object v1, Lcom/google/android/youtube/R$styleable;->PagedGridView:[I

    sget v2, Lcom/google/android/youtube/R$style;->PagedGridView:I

    .line 41
    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 47
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 50
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 51
    if-lez v2, :cond_0

    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 55
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 56
    if-ltz v2, :cond_1

    .line 57
    packed-switch v2, :pswitch_data_0

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 68
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 69
    if-ltz v2, :cond_2

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 73
    :cond_2
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 76
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 79
    return-void

    .line 58
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method protected final b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->l:Lcom/google/android/youtube/core/ui/g;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->l:Lcom/google/android/youtube/core/ui/g;

    .line 105
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 118
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 114
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 97
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 122
    return-void
.end method
