.class public Lcom/google/android/youtube/core/ui/PagedListView;
.super Lcom/google/android/youtube/core/ui/BasePagedView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private o:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 42
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILjava/lang/String;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILjava/lang/String;)V
    .locals 7

    .prologue
    .line 50
    .line 51
    sget v1, Lcom/google/android/youtube/R$layout;->paged_list_view:I

    sget v4, Lcom/google/android/youtube/R$style;->PagedListView:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p5

    move-object v6, p6

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 57
    sget-object v1, Lcom/google/android/youtube/R$styleable;->PagedListView:[I

    const/4 v2, 0x0

    sget v3, Lcom/google/android/youtube/R$style;->PagedListView:I

    .line 56
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 60
    if-nez v2, :cond_2

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 69
    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 70
    if-ltz v2, :cond_0

    .line 71
    packed-switch v2, :pswitch_data_0

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 78
    :cond_0
    :goto_1
    if-gez p4, :cond_1

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    .line 81
    :cond_1
    invoke-virtual {v0, p4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 86
    return-void

    .line 66
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 72
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_1

    .line 73
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 134
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/PagedListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    .line 138
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    .line 139
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method protected final b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->l:Lcom/google/android/youtube/core/ui/g;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->l:Lcom/google/android/youtube/core/ui/g;

    .line 112
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 104
    return-void
.end method
