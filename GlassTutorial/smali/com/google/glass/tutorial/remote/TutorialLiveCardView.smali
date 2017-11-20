.class public Lcom/google/glass/tutorial/remote/TutorialLiveCardView;
.super Lcom/google/glass/livecard/ViewToLiveCardContainer;
.source "TutorialLiveCardView.java"


# instance fields
.field final adapter:Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/livecard/ViewToLiveCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;

    invoke-direct {v0, p1}, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->adapter:Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;

    .line 30
    return-void
.end method

.method protected static sortTutorials(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "tutorials":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/tutorial/Tutorial;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    .local v0, "completedTutorials":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/tutorial/Tutorial;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/glass/tutorial/Tutorial;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/tutorial/Tutorial;

    .line 64
    .local v2, "tutorial":Lcom/google/glass/tutorial/Tutorial;
    invoke-virtual {v2}, Lcom/google/glass/tutorial/Tutorial;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 69
    .end local v2    # "tutorial":Lcom/google/glass/tutorial/Tutorial;
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/glass/livecard/ViewToLiveCardContainer;->onFinishInflate()V

    .line 36
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->listView:Landroid/widget/ListView;

    .line 37
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->adapter:Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->updateTextViewsText()V

    .line 40
    return-void
.end method

.method public setTutorials(Ljava/util/List;)V
    .locals 2
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
    .line 54
    .local p1, "tutorials":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/tutorial/Tutorial;>;"
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->adapter:Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->sortTutorials(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/remote/TutorialListItemsAdapter;->setTutorials(Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public updateTextViewsText()V
    .locals 2

    .prologue
    .line 46
    sget v1, Lcom/google/glass/tutorial/R$id;->tutorial_title:I

    invoke-virtual {p0, v1}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "title":Landroid/widget/TextView;
    sget v1, Lcom/google/glass/tutorial/R$string;->tutorial_checklist_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void
.end method
