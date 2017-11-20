.class public abstract Lcom/google/glass/entity/EntityListFragment;
.super Lcom/google/glass/app/GlassFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/glass/widget/CardScrollView$TransformListener;


# static fields
.field public static final FRAGMENT_ID:Ljava/lang/String; = "entity"


# instance fields
.field private fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

.field private scrollView:Lcom/google/android/glass/widget/CardScrollView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/app/GlassFragment;-><init>()V

    return-void
.end method

.method public static getFastScrollLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
.end method

.method protected getCardScrollView()Lcom/google/android/glass/widget/CardScrollView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 35
    sget v0, Lcom/google/glass/common/R$layout;->entity_scroller:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/common/R$id;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 37
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListFragment;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 39
    new-instance v0, Lcom/google/glass/entity/EntityListFragment$1;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/entity/EntityListFragment$1;-><init>(Lcom/google/glass/entity/EntityListFragment;Landroid/content/Context;Lcom/google/android/glass/widget/CardScrollView;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

    .line 49
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/glass/entity/EntityListFragment;->fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, p0}, Lcom/google/android/glass/widget/CardScrollView;->addTransformListener(Lcom/google/android/glass/widget/CardScrollView$TransformListener;)V

    .line 52
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, p0}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 58
    instance-of v0, p2, Lcom/google/glass/widget/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 59
    check-cast p2, Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {p2}, Lcom/google/glass/widget/horizontalscroll/Card;->onConfirm()Z

    .line 61
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/glass/app/GlassFragment;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 85
    return-void
.end method

.method public onScaleChanged(F)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->onScaleChanged(F)V

    .line 71
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/entity/EntityListFragment;->fastScrollOverlay:Lcom/google/glass/widget/FastScrollOverlay;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->onScrollPositionChanged(F)V

    .line 66
    return-void
.end method

.method protected showFastScrollLabel(I)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
