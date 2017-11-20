.class public Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "LayoutOverlayCardScrollAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final OVERLAY_VIEW_TYPE:I = 0x0

.field private static final VIEW_HOLDER_ID:I = -0x1


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->OVERLAY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->OVERLAY_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;->getItem(I)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->OVERLAY_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v10, 0x77

    const/4 v9, -0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;->getItem(I)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v3

    .line 57
    .local v3, "overlay":Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 58
    check-cast v2, Landroid/widget/FrameLayout;

    .line 59
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;

    .line 60
    .local v5, "viewHolder":Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;
    iget-object v6, v5, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;->card:Lcom/google/android/glass/widget/CardBuilder;

    invoke-virtual {v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->getLabelResId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/glass/widget/CardBuilder;->setText(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 61
    iget-object v6, v5, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;->card:Lcom/google/android/glass/widget/CardBuilder;

    iget-object v7, v5, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;->cardView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/glass/widget/CardBuilder;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    :goto_0
    iget-object v6, v5, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;->overlayView:Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    invoke-virtual {v6, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->setLayoutOverlay(Lcom/google/glass/settings/ui/developer/LayoutOverlay;)V

    .line 83
    return-object v2

    .line 66
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v5    # "viewHolder":Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .restart local v2    # "frameLayout":Landroid/widget/FrameLayout;
    new-instance v6, Lcom/google/android/glass/widget/CardBuilder;

    iget-object v7, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;->context:Landroid/content/Context;

    sget-object v8, Lcom/google/android/glass/widget/CardBuilder$Layout;->MENU:Lcom/google/android/glass/widget/CardBuilder$Layout;

    invoke-direct {v6, v7, v8}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    .line 69
    invoke-virtual {v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->getLabelResId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/glass/widget/CardBuilder;->setText(I)Lcom/google/android/glass/widget/CardBuilder;

    move-result-object v0

    .line 70
    .local v0, "card":Lcom/google/android/glass/widget/CardBuilder;
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardBuilder;->getView()Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "cardView":Landroid/view/View;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v9, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v4, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;

    iget-object v6, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v4, "overlayView":Lcom/google/glass/settings/ui/developer/LayoutOverlayView;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v9, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v5, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;

    invoke-direct {v5, p0, v4, v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;-><init>(Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter;Lcom/google/glass/settings/ui/developer/LayoutOverlayView;Lcom/google/android/glass/widget/CardBuilder;Landroid/view/View;)V

    .line 80
    .restart local v5    # "viewHolder":Lcom/google/glass/settings/ui/developer/LayoutOverlayCardScrollAdapter$ViewHolder;
    invoke-virtual {v2, v9, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
