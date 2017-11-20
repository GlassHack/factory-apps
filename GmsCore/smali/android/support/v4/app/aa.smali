.class final Landroid/support/v4/app/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 207
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 208
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 210
    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v1, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    return-object v0
.end method

.method public static varargs a([Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 345
    .line 346
    const/4 v0, -0x1

    move v2, v0

    move v3, v1

    move v0, v1

    .line 347
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 348
    aget-object v4, p0, v0

    if-eqz v4, :cond_0

    .line 349
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    .line 347
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_1
    if-nez v3, :cond_3

    .line 355
    const/4 v0, 0x0

    .line 368
    :cond_2
    :goto_1
    return-object v0

    .line 358
    :cond_3
    const/4 v0, 0x1

    if-ne v3, v0, :cond_4

    .line 359
    aget-object v0, p0, v2

    goto :goto_1

    .line 362
    :cond_4
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 363
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 364
    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    .line 365
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 363
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 121
    check-cast p0, Landroid/transition/Transition;

    .line 122
    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 123
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 40
    check-cast p0, Landroid/transition/Transition;

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 42
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 43
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 44
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Landroid/support/v4/app/ab;

    invoke-direct {v0, p1}, Landroid/support/v4/app/ab;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 74
    return-void
.end method

.method static a(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 217
    check-cast p1, Landroid/view/ViewGroup;

    .line 218
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 222
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 224
    invoke-static {p0, v2}, Landroid/support/v4/app/aa;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 242
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 244
    invoke-static {p0, v2}, Landroid/support/v4/app/aa;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method
