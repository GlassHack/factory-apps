.class final Lcom/google/android/gms/fitness/b/b/ad;
.super Lcom/google/android/gms/fitness/b/b/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/NavigableMap;

.field private final b:Lcom/google/android/gms/fitness/b/b/u;


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/a;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    .line 249
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/u;->a()Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    .line 250
    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/a;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    .line 255
    iput-object p2, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    .line 256
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/b/b/ad;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 296
    instance-of v0, p1, Lcom/google/android/gms/fitness/b/b/e;

    if-eqz v0, :cond_1

    .line 299
    :try_start_0
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    .line 300
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/u;->c(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 311
    :goto_0
    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 311
    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->b(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/google/android/gms/fitness/b/b/ad;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/b/b/ad;-><init>(Ljava/util/NavigableMap;Lcom/google/android/gms/fitness/b/b/u;)V

    .line 262
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/util/Iterator;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 335
    :goto_0
    new-instance v1, Lcom/google/android/gms/fitness/b/b/ae;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/fitness/b/b/ae;-><init>(Lcom/google/android/gms/fitness/b/b/ad;Ljava/util/Iterator;)V

    return-object v1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/b/u;->c()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 326
    if-nez v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v2, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/b/u;->c()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method final b()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/b/u;->f()Ljava/lang/Comparable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 360
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bv;->e(Ljava/util/Iterator;)Lcom/google/c/c/da;

    move-result-object v1

    .line 361
    invoke-interface {v1}, Lcom/google/c/c/da;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v2, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v1}, Lcom/google/c/c/da;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v1}, Lcom/google/c/c/da;->next()Ljava/lang/Object;

    .line 365
    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/b/b/af;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/b/b/af;-><init>(Lcom/google/android/gms/fitness/b/b/ad;Lcom/google/c/c/da;)V

    return-object v0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcom/google/c/c/cz;->b()Lcom/google/c/c/cz;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/ad;->a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/ad;->a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 237
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/ad;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/u;->a()Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ad;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/u;->a()Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ad;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    .line 384
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ad;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2

    .prologue
    .line 237
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    check-cast p3, Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p4}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v1

    invoke-static {p1, v0, p3, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Lcom/google/c/c/aj;Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/ad;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 237
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->b(Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/ad;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
