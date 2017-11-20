.class public abstract Lcom/google/glass/setup/ArrayListCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "ArrayListCardScrollAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/glass/widget/CardScrollAdapter;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final showArrow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showArrow"    # Z

    .prologue
    .line 32
    .local p0, "this":Lcom/google/glass/setup/ArrayListCardScrollAdapter;, "Lcom/google/glass/setup/ArrayListCardScrollAdapter<TT;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->context:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->itemList:Ljava/util/List;

    .line 36
    iput-boolean p2, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->showArrow:Z

    .line 37
    return-void
.end method

.method private setArrow(Landroid/view/View;ZI)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z
    .param p3, "viewId"    # I

    .prologue
    .line 53
    .local p0, "this":Lcom/google/glass/setup/ArrayListCardScrollAdapter;, "Lcom/google/glass/setup/ArrayListCardScrollAdapter<TT;>;"
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "arrowView":Landroid/view/View;
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->showArrow:Z

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract fillView(ILandroid/view/View;)V
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/google/glass/setup/ArrayListCardScrollAdapter;, "Lcom/google/glass/setup/ArrayListCardScrollAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/glass/setup/ArrayListCardScrollAdapter;, "Lcom/google/glass/setup/ArrayListCardScrollAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutId()I
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lcom/google/glass/setup/ArrayListCardScrollAdapter;, "Lcom/google/glass/setup/ArrayListCardScrollAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->itemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/google/glass/setup/ArrayListCardScrollAdapter;, "Lcom/google/glass/setup/ArrayListCardScrollAdapter<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-nez p2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/glass/setup/R$layout;->setup_select_card_container_item:I

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    .line 44
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->getLayoutId()I

    move-result v4

    invoke-virtual {v3, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->fillView(ILandroid/view/View;)V

    .line 47
    if-lez p1, :cond_1

    move v0, v1

    :goto_0
    sget v3, Lcom/google/glass/setup/R$id;->leftArrow:I

    invoke-direct {p0, p2, v0, v3}, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->setArrow(Landroid/view/View;ZI)V

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    :goto_1
    sget v0, Lcom/google/glass/setup/R$id;->rightArrow:I

    invoke-direct {p0, p2, v1, v0}, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->setArrow(Landroid/view/View;ZI)V

    .line 49
    return-object p2

    :cond_1
    move v0, v2

    .line 47
    goto :goto_0

    :cond_2
    move v1, v2

    .line 48
    goto :goto_1
.end method

.method public isShowArrow()Z
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/google/glass/setup/ArrayListCardScrollAdapter;, "Lcom/google/glass/setup/ArrayListCardScrollAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->showArrow:Z

    return v0
.end method
