.class public Lcom/google/glass/widget/SettledCardScrollView;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "SettledCardScrollView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private settledListener:Lcom/google/glass/widget/SettledListener;

.field private settledPosition:I

.field private settledView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    .line 27
    invoke-super {p0, p0}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 28
    return-void
.end method

.method private changeSettledItem(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 76
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    if-eq p1, v0, :cond_0

    .line 87
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    if-eq v0, v3, :cond_2

    .line 88
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    iget v1, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    iget-object v2, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/widget/SettledListener;->onUnsettled(ILandroid/view/View;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledView:Landroid/view/View;

    .line 92
    :cond_2
    iput p1, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    .line 93
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    invoke-virtual {p0}, Lcom/google/glass/widget/SettledCardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 94
    :cond_3
    iput v3, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    .line 97
    :cond_4
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    if-eq v0, v3, :cond_0

    .line 98
    iput-object p2, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    iget v1, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    iget-object v2, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/widget/SettledListener;->onSettled(ILandroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/widget/SettledCardScrollView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/widget/SettledCardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/SettledCardScrollView;->changeSettledItem(ILandroid/view/View;)V

    .line 39
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/SettledCardScrollView;->changeSettledItem(ILandroid/view/View;)V

    .line 44
    invoke-super {p0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 45
    return-void
.end method

.method public getCurrentlyFocusedItemIndex()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 106
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 60
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 63
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/google/glass/widget/SettledCardScrollView;->changeSettledItem(ILandroid/view/View;)V

    .line 64
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 72
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/SettledCardScrollView;->changeSettledItem(ILandroid/view/View;)V

    .line 73
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/SettledCardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/android/glass/widget/CardScrollAdapter;

    .prologue
    .line 49
    instance-of v0, p1, Lcom/google/glass/widget/SettledListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/google/glass/widget/SettledListener;

    iput-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    .line 54
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 55
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 33
    return-void
.end method
