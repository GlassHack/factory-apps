.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/r;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/bp;[B)Ljava/util/List;
    .locals 6

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v2

    if-ge v0, v2, :cond_3

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    aget-byte v5, p1, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/r;->a(Ljava/util/Map;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_0
    aget-byte v5, p1, v0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    invoke-static {v1, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/r;->a(Ljava/util/Map;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_1
    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    invoke-static {v1, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/r;->a(Ljava/util/Map;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Lcom/google/c/c/if;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/c/c/fx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->c()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/ha;->a(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private static a(Ljava/util/Map;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 4

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;

    invoke-direct {v2, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/s;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->b()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->b()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->a()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/s;->b()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
