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
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    .line 28
    invoke-super {p0, p0}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 29
    return-void
.end method

.method private changeSettledItem(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 75
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    if-eq p1, v0, :cond_0

    .line 86
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    if-eq v0, v3, :cond_2

    .line 87
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    iget v1, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    iget-object v2, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/widget/SettledListener;->onUnsettled(ILandroid/view/View;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledView:Landroid/view/View;

    .line 91
    :cond_2
    iput p1, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    .line 92
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    invoke-virtual {p0}, Lcom/google/glass/widget/SettledCardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 93
    :cond_3
    iput v3, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    .line 96
    :cond_4
    iget v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledPosition:I

    if-eq v0, v3, :cond_0

    .line 97
    iput-object p2, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledView:Landroid/view/View;

    .line 98
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
    .line 38
    invoke-super {p0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/widget/SettledCardScrollView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/widget/SettledCardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/SettledCardScrollView;->changeSettledItem(ILandroid/view/View;)V

    .line 40
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/SettledCardScrollView;->changeSettledItem(ILandroid/view/View;)V

    .line 45
    invoke-super {p0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 46
    return-void
.end method

.method public getCurrentlyFocusedItemIndex()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 105
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
    invoke-direct {p0, p3, p2}, Lcom/google/glass/widget/SettledCardScrollView;->changeSettledItem(ILandroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 64
    :cond_0
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
    .line 68
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/SettledCardScrollView;->changeSettledItem(ILandroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 72
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/SettledCardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/android/glass/widget/CardScrollAdapter;

    .prologue
    .line 50
    instance-of v0, p1, Lcom/google/glass/widget/SettledListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/google/glass/widget/SettledListener;

    iput-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    .line 55
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 56
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/SettledCardScrollView;->settledListener:Lcom/google/glass/widget/SettledListener;

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/widget/SettledCardScrollView;->additionalListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 34
    return-void
.end method
