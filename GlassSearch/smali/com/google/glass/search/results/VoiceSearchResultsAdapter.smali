.class public Lcom/google/glass/search/results/VoiceSearchResultsAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "VoiceSearchResultsAdapter.java"


# instance fields
.field private resultPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/search/results/ResultsContainer$ResultPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/search/results/ResultsContainer$ResultPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "resultPages":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/ResultsContainer$ResultPage;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/results/ResultsContainer$ResultPage;

    invoke-virtual {v0}, Lcom/google/glass/search/results/ResultsContainer$ResultPage;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/search/results/ResultsContainer$ResultPage;

    invoke-virtual {v1}, Lcom/google/glass/search/results/ResultsContainer$ResultPage;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 40
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;->resultPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
