.class public Lcom/google/glass/search/results/ResultsContainer$Builder;
.super Ljava/lang/Object;
.source "ResultsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/ResultsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final resultPages:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)Lcom/google/glass/search/results/ResultsContainer$Builder;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/glass/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    new-instance v1, Lcom/google/glass/search/results/ResultsContainer$ResultPage;

    invoke-direct {v1, p1, v2, v2}, Lcom/google/glass/search/results/ResultsContainer$ResultPage;-><init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-object p0
.end method

.method public addView(Landroid/view/View;Ljava/util/List;)Lcom/google/glass/search/results/ResultsContainer$Builder;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;)",
            "Lcom/google/glass/search/results/ResultsContainer$Builder;"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    iget-object v0, p0, Lcom/google/glass/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    new-instance v1, Lcom/google/glass/search/results/ResultsContainer$ResultPage;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/glass/search/results/ResultsContainer$ResultPage;-><init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object p0
.end method

.method public addView(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/glass/search/results/ResultsContainer$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/glass/search/results/ResultsContainer$Builder;"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    iget-object v0, p0, Lcom/google/glass/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    new-instance v1, Lcom/google/glass/search/results/ResultsContainer$ResultPage;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/glass/search/results/ResultsContainer$ResultPage;-><init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object p0
.end method

.method public addView(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;I)Lcom/google/glass/search/results/ResultsContainer$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            "I)",
            "Lcom/google/glass/search/results/ResultsContainer$Builder;"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    iget-object v0, p0, Lcom/google/glass/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    new-instance v1, Lcom/google/glass/search/results/ResultsContainer$ResultPage;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/glass/search/results/ResultsContainer$ResultPage;-><init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-interface {v0, p4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 111
    return-object p0
.end method

.method public build()Lcom/google/glass/search/results/ResultsContainer;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/google/glass/search/results/ResultsContainer;

    iget-object v1, p0, Lcom/google/glass/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/search/results/ResultsContainer;-><init>(Ljava/util/List;Lcom/google/glass/search/results/ResultsContainer$1;)V

    return-object v0
.end method
