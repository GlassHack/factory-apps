.class public final Lcom/google/maps/api/android/lib6/gmm6/o/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bt;Lcom/google/maps/api/android/lib6/gmm6/o/j;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->d:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->e:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->f:Z

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/k;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/a;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/k;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/a/a/a;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->d:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bt;Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->d:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->e:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->f:Z

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    array-length v2, p3

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p3, v1

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/a;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/o/bt;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/a;)Lcom/google/maps/api/android/lib6/gmm6/o/k;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/k;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->e:Z

    return-void
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/o/j;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/a/a/a;)Lcom/google/maps/api/android/lib6/gmm6/o/k;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/k;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->f:Z

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->h:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->f:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->i:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/i;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/j;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/k;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/k;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->g:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->b:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->e:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->e:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->f:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "overlay"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "order"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "isFirstPassForOverlay"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "isLastPassForOverlay"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "overlayRenderTweaks"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "featureRenderTweaks"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
