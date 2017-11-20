.class Lcom/google/glass/entity/EntityListFragment$1;
.super Lcom/google/glass/widget/FastScrollOverlay;
.source "EntityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityListFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityListFragment;Landroid/content/Context;Lcom/google/android/glass/widget/CardScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityListFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/google/android/glass/widget/CardScrollView;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/glass/entity/EntityListFragment$1;->this$0:Lcom/google/glass/entity/EntityListFragment;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/widget/FastScrollOverlay;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardScrollView;)V

    return-void
.end method


# virtual methods
.method protected getLabelForItem(Landroid/view/View;I)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment$1;->this$0:Lcom/google/glass/entity/EntityListFragment;

    invoke-virtual {v0, p2}, Lcom/google/glass/entity/EntityListFragment;->showFastScrollLabel(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    check-cast p1, Lcom/google/glass/entity/EntityItemView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/google/glass/entity/EntityItemView;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityListFragment;->getFastScrollLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
