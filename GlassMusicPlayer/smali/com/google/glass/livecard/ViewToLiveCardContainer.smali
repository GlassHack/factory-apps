.class public Lcom/google/glass/livecard/ViewToLiveCardContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/livecard/InvalidateObservable;


# instance fields
.field private final invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/livecard/ViewToLiveCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/livecard/ViewToLiveCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lcom/google/glass/livecard/InvalidateObserverSet;

    invoke-direct {v0}, Lcom/google/glass/livecard/InvalidateObserverSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardContainer;->invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;

    .line 23
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 52
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardContainer;->invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;

    invoke-virtual {v0, p0}, Lcom/google/glass/livecard/InvalidateObserverSet;->notifyInvalidated(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardContainer;->invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;

    invoke-virtual {v0, p0}, Lcom/google/glass/livecard/InvalidateObserverSet;->notifyInvalidated(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 40
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardContainer;->invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;

    invoke-virtual {v0, p0}, Lcom/google/glass/livecard/InvalidateObserverSet;->notifyInvalidated(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method public registerInvalidateObserver(Lcom/google/glass/livecard/InvalidateObserver;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardContainer;->invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;

    invoke-virtual {v0, p1}, Lcom/google/glass/livecard/InvalidateObserverSet;->registerInvalidateObserver(Lcom/google/glass/livecard/InvalidateObserver;)V

    .line 30
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 60
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardContainer;->invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardContainer;->invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;

    invoke-virtual {v0, p0}, Lcom/google/glass/livecard/InvalidateObserverSet;->notifyInvalidated(Landroid/view/View;)V

    .line 63
    :cond_0
    return-void
.end method

.method public unregisterInvalidateObserver(Lcom/google/glass/livecard/InvalidateObserver;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardContainer;->invalidateObservers:Lcom/google/glass/livecard/InvalidateObserverSet;

    invoke-virtual {v0, p1}, Lcom/google/glass/livecard/InvalidateObserverSet;->unregisterInvalidateObserver(Lcom/google/glass/livecard/InvalidateObserver;)V

    .line 35
    return-void
.end method
