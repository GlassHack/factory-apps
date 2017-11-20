.class final Lcom/google/android/gms/fitness/b/b/aa;
.super Lcom/google/android/gms/fitness/b/b/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/NavigableMap;

.field private final b:Ljava/util/NavigableMap;

.field private final c:Lcom/google/android/gms/fitness/b/b/u;


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 1

    .prologue
    .line 408
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/u;->a()Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/b/b/aa;-><init>(Ljava/util/NavigableMap;Lcom/google/android/gms/fitness/b/b/u;)V

    .line 409
    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/a;-><init>()V

    .line 413
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/aa;->a:Ljava/util/NavigableMap;

    .line 414
    new-instance v0, Lcom/google/android/gms/fitness/b/b/ad;

    invoke-direct {v0, p1}, Lcom/google/android/gms/fitness/b/b/ad;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->b:Ljava/util/NavigableMap;

    .line 415
    iput-object p2, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    .line 416
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/b/b/aa;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 567
    instance-of v0, p1, Lcom/google/android/gms/fitness/b/b/e;

    if-eqz v0, :cond_0

    .line 570
    :try_start_0
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    .line 572
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/b/b/aa;->a(Lcom/google/android/gms/fitness/b/b/e;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 573
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    return-object v0

    .line 577
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 580
    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/b/b/e;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 442
    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->b(Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/aa;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/u;->b(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 423
    :goto_0
    return-object v0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    .line 423
    new-instance v0, Lcom/google/android/gms/fitness/b/b/aa;

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/aa;->a:Ljava/util/NavigableMap;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/fitness/b/b/aa;-><init>(Ljava/util/NavigableMap;Lcom/google/android/gms/fitness/b/b/u;)V

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/aa;->b:Ljava/util/NavigableMap;

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->c()Ljava/lang/Comparable;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->d()Lcom/google/c/c/aj;

    move-result-object v0

    sget-object v3, Lcom/google/c/c/aj;->b:Lcom/google/c/c/aj;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 469
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bv;->e(Ljava/util/Iterator;)Lcom/google/c/c/da;

    move-result-object v2

    .line 472
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->c(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Lcom/google/c/c/da;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Lcom/google/c/c/da;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 474
    :cond_0
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    .line 480
    :goto_2
    new-instance v1, Lcom/google/android/gms/fitness/b/b/ab;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/fitness/b/b/ab;-><init>(Lcom/google/android/gms/fitness/b/b/aa;Lcom/google/android/gms/fitness/b/b/e;Lcom/google/c/c/da;)V

    move-object v0, v1

    :goto_3
    return-object v0

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->b:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_1

    .line 475
    :cond_3
    invoke-interface {v2}, Lcom/google/c/c/da;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    invoke-interface {v2}, Lcom/google/c/c/da;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    goto :goto_2

    .line 478
    :cond_4
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    goto :goto_3
.end method

.method final b()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->f()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    .line 517
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/b/u;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/b/u;->g()Lcom/google/c/c/aj;

    move-result-object v1

    sget-object v2, Lcom/google/c/c/aj;->b:Lcom/google/c/c/aj;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 519
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/aa;->b:Ljava/util/NavigableMap;

    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bv;->e(Ljava/util/Iterator;)Lcom/google/c/c/da;

    move-result-object v2

    .line 523
    invoke-interface {v2}, Lcom/google/c/c/da;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    invoke-interface {v2}, Lcom/google/c/c/da;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->e()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-interface {v2}, Lcom/google/c/c/da;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    .line 533
    :goto_2
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->e()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    .line 534
    new-instance v1, Lcom/google/android/gms/fitness/b/b/ac;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/fitness/b/b/ac;-><init>(Lcom/google/android/gms/fitness/b/b/aa;Lcom/google/android/gms/fitness/b/b/e;Lcom/google/c/c/da;)V

    move-object v0, v1

    :goto_3
    return-object v0

    .line 514
    :cond_0
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->e()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/aa;->a:Ljava/util/NavigableMap;

    invoke-interface {v2}, Lcom/google/c/c/da;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    goto :goto_2

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->c(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->a:Ljava/util/NavigableMap;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 529
    :cond_4
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    goto :goto_3

    .line 531
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/aa;->a:Ljava/util/NavigableMap;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/e;->d()Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    goto :goto_2
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 447
    invoke-static {}, Lcom/google/c/c/cz;->b()Lcom/google/c/c/cz;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/aa;->a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;

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
    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/aa;->a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 395
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/aa;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/aa;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public final synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2

    .prologue
    .line 395
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    check-cast p3, Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p4}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v1

    invoke-static {p1, v0, p3, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Lcom/google/c/c/aj;Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/aa;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 395
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/b/b/aa;->a(Lcom/google/android/gms/fitness/b/b/e;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
