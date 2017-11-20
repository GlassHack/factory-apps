.class public final Landroid/support/v4/app/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private final a:Landroid/util/ArrayMap;

.field private final b:Ljava/util/ArrayList;

.field private c:Ljava/util/Map;

.field private d:Landroid/support/v4/app/ah;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/ah;Ljava/util/Map;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ag;->a:Landroid/util/ArrayMap;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ag;->b:Ljava/util/ArrayList;

    .line 267
    iput-object p2, p0, Landroid/support/v4/app/ag;->e:Landroid/view/View;

    .line 268
    iput-object p4, p0, Landroid/support/v4/app/ag;->c:Ljava/util/Map;

    .line 269
    iput-object p3, p0, Landroid/support/v4/app/ag;->d:Landroid/support/v4/app/ah;

    .line 270
    iput-object p5, p0, Landroid/support/v4/app/ag;->f:Landroid/view/View;

    .line 271
    iput-object p1, p0, Landroid/support/v4/app/ag;->g:Landroid/transition/Transition;

    .line 272
    iget-object v0, p0, Landroid/support/v4/app/ag;->g:Landroid/transition/Transition;

    invoke-virtual {v0, p5}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 273
    iget-object v0, p0, Landroid/support/v4/app/ag;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 274
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v4/app/ag;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 312
    iget-object v0, p0, Landroid/support/v4/app/ag;->d:Landroid/support/v4/app/ah;

    invoke-interface {v0}, Landroid/support/v4/app/ah;->a()Landroid/view/View;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_2

    .line 314
    iget-object v0, p0, Landroid/support/v4/app/ag;->b:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/support/v4/app/aa;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/ag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 316
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 317
    iget-object v4, p0, Landroid/support/v4/app/ag;->g:Landroid/transition/Transition;

    iget-object v0, p0, Landroid/support/v4/app/ag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 316
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ag;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    iget-object v0, p0, Landroid/support/v4/app/ag;->a:Landroid/util/ArrayMap;

    invoke-static {v0, v2}, Landroid/support/v4/app/aa;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Landroid/support/v4/app/ag;->a:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/support/v4/app/ag;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 322
    iget-object v0, p0, Landroid/support/v4/app/ag;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    iget-object v3, p0, Landroid/support/v4/app/ag;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 325
    if-eqz v1, :cond_1

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 279
    iget-object v0, p0, Landroid/support/v4/app/ag;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 280
    iget-object v0, p0, Landroid/support/v4/app/ag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 281
    :goto_0
    if-ge v2, v3, :cond_0

    .line 282
    iget-object v0, p0, Landroid/support/v4/app/ag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 281
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ag;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 285
    iget-object v0, p0, Landroid/support/v4/app/ag;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v2, v1

    .line 286
    :goto_1
    if-ge v2, v3, :cond_1

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/ag;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 288
    iget-object v1, p0, Landroid/support/v4/app/ag;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 286
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 291
    :cond_1
    return-void
.end method
