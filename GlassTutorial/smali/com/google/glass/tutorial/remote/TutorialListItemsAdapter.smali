.class public Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "TutorialListItemsAdapter.java"


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field tutorials:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;->tutorials:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;->tutorials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/google/glass/tutorial/R$layout;->tutorial_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 56
    check-cast v0, Lcom/google/glass/tutorial/remote/TutorialListItemView;

    .line 57
    .local v0, "tutorialListItemView":Lcom/google/glass/tutorial/remote/TutorialListItemView;
    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;->tutorials:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/tutorial/Tutorial;

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/remote/TutorialListItemView;->bind(Lcom/google/glass/tutorial/Tutorial;)V

    .line 58
    return-object p2
.end method

.method public setTutorials(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "tutorials":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/tutorial/Tutorial;>;"
    iput-object p1, p0, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;->tutorials:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method
