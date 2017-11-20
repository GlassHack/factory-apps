.class public Lcom/google/glass/widget/ViewListCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"


# instance fields
.field private views:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/widget/ViewListCardScrollAdapter;->views:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/glass/widget/ViewListCardScrollAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/widget/ViewListCardScrollAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/widget/ViewListCardScrollAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/widget/ViewListCardScrollAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public setViews(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/glass/widget/ViewListCardScrollAdapter;->views:Ljava/util/List;

    .line 20
    invoke-virtual {p0}, Lcom/google/glass/widget/ViewListCardScrollAdapter;->notifyDataSetChanged()V

    .line 21
    return-void
.end method
