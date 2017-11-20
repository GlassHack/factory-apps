.class public Lcom/google/glass/search/results/ResultsContainer$ResultPage;
.super Ljava/lang/Object;
.source "ResultsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/ResultsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultPage"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private menuItemDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/glass/search/results/ResultsContainer$ResultPage;->view:Landroid/view/View;

    .line 73
    iput-object p2, p0, Lcom/google/glass/search/results/ResultsContainer$ResultPage;->menuItemDescriptors:Ljava/util/List;

    .line 74
    iput-object p3, p0, Lcom/google/glass/search/results/ResultsContainer$ResultPage;->bundle:Landroid/os/Bundle;

    .line 75
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/search/results/ResultsContainer$ResultPage;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMenuItemDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/search/results/ResultsContainer$ResultPage;->menuItemDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/search/results/ResultsContainer$ResultPage;->view:Landroid/view/View;

    return-object v0
.end method
