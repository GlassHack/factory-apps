.class final Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;
.super Lcom/google/android/pano/widget/ViewsStateBundle;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExpandedChildStates"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 277
    const/4 v0, 0x2

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/google/android/pano/widget/ViewsStateBundle;-><init>(II)V

    .line 278
    return-void
.end method


# virtual methods
.method protected saveVisibleViewsUnchecked()V
    .locals 5

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 282
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 283
    .local v2, "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    iget-object v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget v4, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    invoke-virtual {p0, v3, v4}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedChildStates;->saveViewUnchecked(Landroid/view/View;I)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "v":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_0
    return-void
.end method
