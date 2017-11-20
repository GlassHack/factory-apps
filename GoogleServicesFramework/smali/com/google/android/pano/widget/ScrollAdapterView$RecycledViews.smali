.class Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecycledViews"
.end annotation


# instance fields
.field mAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

.field mMaxRecycledViews:I

.field mViews:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mMaxRecycledViews:I

    .line 192
    return-void
.end method


# virtual methods
.method getView(I)Landroid/view/View;
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    aget-object v0, v2, p1

    .line 220
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 222
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    return-object v1
.end method

.method recycleView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    invoke-interface {v0, p1}, Lcom/google/android/pano/widget/ScrollAdapterBase;->viewRemoved(Landroid/view/View;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mMaxRecycledViews:I

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_1
    return-void
.end method

.method updateAdapter(Lcom/google/android/pano/widget/ScrollAdapterBase;)V
    .locals 4
    .param p1, "adapter"    # Lcom/google/android/pano/widget/ScrollAdapterBase;

    .prologue
    .line 195
    if-eqz p1, :cond_1

    .line 196
    invoke-interface {p1}, Lcom/google/android/pano/widget/ScrollAdapterBase;->getViewTypeCount()I

    move-result v1

    .line 197
    .local v1, "typeCount":I
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 198
    :cond_0
    new-array v2, v1, [Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 200
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mViews:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    .end local v1    # "typeCount":I
    :cond_1
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$RecycledViews;->mAdapter:Lcom/google/android/pano/widget/ScrollAdapterBase;

    .line 205
    return-void
.end method
