.class public Lcom/google/glass/livecard/InvalidateObserverSet;
.super Ljava/lang/Object;
.source "InvalidateObserverSet.java"

# interfaces
.implements Lcom/google/glass/livecard/InvalidateObservable;


# instance fields
.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/glass/livecard/InvalidateObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/livecard/InvalidateObserverSet;->observers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public notifyInvalidated(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v3, p0, Lcom/google/glass/livecard/InvalidateObserverSet;->observers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 38
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/glass/livecard/InvalidateObserver;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 40
    .local v2, "refObserver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/glass/livecard/InvalidateObserver;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/livecard/InvalidateObserver;

    .line 41
    .local v1, "observer":Lcom/google/glass/livecard/InvalidateObserver;
    if-nez v1, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v1, p1}, Lcom/google/glass/livecard/InvalidateObserver;->onInvalidated(Landroid/view/View;)V

    goto :goto_0

    .line 47
    .end local v1    # "observer":Lcom/google/glass/livecard/InvalidateObserver;
    .end local v2    # "refObserver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/glass/livecard/InvalidateObserver;>;"
    :cond_1
    return-void
.end method

.method public registerInvalidateObserver(Lcom/google/glass/livecard/InvalidateObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/google/glass/livecard/InvalidateObserver;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/google/glass/livecard/InvalidateObserverSet;->observers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public unregisterInvalidateObserver(Lcom/google/glass/livecard/InvalidateObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/google/glass/livecard/InvalidateObserver;

    .prologue
    .line 26
    iget-object v3, p0, Lcom/google/glass/livecard/InvalidateObserverSet;->observers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/glass/livecard/InvalidateObserver;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 29
    .local v2, "refObserver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/glass/livecard/InvalidateObserver;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/livecard/InvalidateObserver;

    .line 30
    .local v1, "potentialObserver":Lcom/google/glass/livecard/InvalidateObserver;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 31
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 34
    .end local v1    # "potentialObserver":Lcom/google/glass/livecard/InvalidateObserver;
    .end local v2    # "refObserver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/glass/livecard/InvalidateObserver;>;"
    :cond_2
    return-void
.end method
