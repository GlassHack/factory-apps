.class public Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "VoiceSearchResultsCardScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public setResultPages(Ljava/util/List;)V
    .locals 1
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
    .line 33
    .local p1, "resultPages":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/search/results/ResultsContainer$ResultPage;>;"
    new-instance v0, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;

    invoke-direct {v0, p1}, Lcom/google/glass/search/results/VoiceSearchResultsAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/VoiceSearchResultsCardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 34
    return-void
.end method
