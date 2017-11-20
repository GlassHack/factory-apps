.class public abstract Lcom/google/android/pano/widget/AbsControlsView;
.super Landroid/widget/FrameLayout;
.source "AbsControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/AbsControlsView$Listener;
    }
.end annotation


# instance fields
.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/widget/AbsControlsView$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/pano/widget/AbsControlsView;->initDefaults()V

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/AbsControlsView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/AbsControlsView;->mListeners:Ljava/util/ArrayList;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract focusDefaultView()V
.end method

.method public handlesHorizontalGestures()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract initDefaults()V
.end method

.method protected abstract initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method protected sendOnActiveChange(Z)V
    .locals 4
    .param p1, "active"    # Z

    .prologue
    .line 123
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/pano/widget/AbsControlsView;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/widget/AbsControlsView$Listener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/AbsControlsView$Listener;

    .line 125
    .local v1, "listener":Lcom/google/android/pano/widget/AbsControlsView$Listener;
    invoke-interface {v1, p1}, Lcom/google/android/pano/widget/AbsControlsView$Listener;->onActiveChange(Z)V

    goto :goto_0

    .line 127
    .end local v1    # "listener":Lcom/google/android/pano/widget/AbsControlsView$Listener;
    :cond_0
    return-void
.end method

.method protected sendOnClick(I)V
    .locals 4
    .param p1, "viewId"    # I

    .prologue
    .line 116
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/pano/widget/AbsControlsView;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/widget/AbsControlsView$Listener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/AbsControlsView$Listener;

    .line 118
    .local v1, "listener":Lcom/google/android/pano/widget/AbsControlsView$Listener;
    invoke-interface {v1, p1}, Lcom/google/android/pano/widget/AbsControlsView$Listener;->onClick(I)V

    goto :goto_0

    .line 120
    .end local v1    # "listener":Lcom/google/android/pano/widget/AbsControlsView$Listener;
    :cond_0
    return-void
.end method
