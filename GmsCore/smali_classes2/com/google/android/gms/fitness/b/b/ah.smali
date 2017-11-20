.class final Lcom/google/android/gms/fitness/b/b/ah;
.super Lcom/google/android/gms/fitness/b/b/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/b/b/u;

.field private final b:Lcom/google/android/gms/fitness/b/b/u;

.field private final c:Ljava/util/NavigableMap;

.field private final d:Ljava/util/NavigableMap;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/b/b/u;Lcom/google/android/gms/fitness/b/b/u;Ljava/util/NavigableMap;)V
    .locals 1

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/b/a;-><init>()V

    .line 634
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    .line 635
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    .line 636
    invoke-static {p3}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->c:Ljava/util/NavigableMap;

    .line 637
    new-instance v0, Lcom/google/android/gms/fitness/b/b/ad;

    invoke-direct {v0, p3}, Lcom/google/android/gms/fitness/b/b/ad;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->d:Ljava/util/NavigableMap;

    .line 638
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/b/b/u;Lcom/google/android/gms/fitness/b/b/u;Ljava/util/NavigableMap;B)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/b/b/ah;-><init>(Lcom/google/android/gms/fitness/b/b/u;Lcom/google/android/gms/fitness/b/b/u;Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/b/b/ah;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 678
    instance-of v0, p1, Lcom/google/android/gms/fitness/b/b/e;

    if-eqz v0, :cond_4

    .line 681
    :try_start_0
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    .line 682
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/u;->c(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 701
    :goto_0
    return-object v0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->c:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 688
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v3, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v3, v3, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/b/e;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v2

    if-lez v2, :cond_4

    .line 689
    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    goto :goto_0

    .line 687
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->c:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 693
    if-eqz v0, :cond_4

    .line 694
    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 701
    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;
    .locals 4

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->b(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 644
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/b/b/ah;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v3, p0, Lcom/google/android/gms/fitness/b/b/ah;->c:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/b/b/ah;-><init>(Lcom/google/android/gms/fitness/b/b/u;Lcom/google/android/gms/fitness/b/b/u;Ljava/util/NavigableMap;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/b/b/ah;)Lcom/google/android/gms/fitness/b/b/u;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/util/Iterator;
    .locals 5

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v1, v1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v1, v1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/e;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ah;->d:Ljava/util/NavigableMap;

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    .line 718
    :cond_2
    const/4 v2, 0x0

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    invoke-interface {v2, v1, v0}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 721
    invoke-static {}, Lcom/google/c/c/cz;->b()Lcom/google/c/c/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v1, v1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v3, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v3, v3, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v3}, Lcom/google/android/gms/fitness/b/b/e;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/c/c/cz;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    .line 723
    new-instance v1, Lcom/google/android/gms/fitness/b/b/ai;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/fitness/b/b/ai;-><init>(Lcom/google/android/gms/fitness/b/b/ah;Ljava/util/Iterator;Lcom/google/android/gms/fitness/b/b/e;)V

    move-object v0, v1

    goto :goto_0

    .line 718
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ah;->c:Ljava/util/NavigableMap;

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/e;->c()Ljava/lang/Comparable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/b/b/u;->d()Lcom/google/c/c/aj;

    move-result-object v2

    sget-object v3, Lcom/google/c/c/aj;->b:Lcom/google/c/c/aj;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1
.end method

.method final b()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-static {}, Lcom/google/c/c/bv;->a()Lcom/google/c/c/ek;

    move-result-object v0

    .line 751
    :goto_0
    return-object v0

    .line 745
    :cond_0
    invoke-static {}, Lcom/google/c/c/cz;->b()Lcom/google/c/c/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ah;->a:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v1, v1, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ah;->b:Lcom/google/android/gms/fitness/b/b/u;

    iget-object v2, v2, Lcom/google/android/gms/fitness/b/b/u;->b:Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {v2}, Lcom/google/android/gms/fitness/b/b/e;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/cz;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/e;

    .line 747
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ah;->c:Ljava/util/NavigableMap;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/e;->c()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/e;->b()Lcom/google/c/c/aj;

    move-result-object v0

    sget-object v3, Lcom/google/c/c/aj;->b:Lcom/google/c/c/aj;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 751
    new-instance v0, Lcom/google/android/gms/fitness/b/b/aj;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/b/b/aj;-><init>(Lcom/google/android/gms/fitness/b/b/ah;Ljava/util/Iterator;)V

    goto :goto_0

    .line 747
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 668
    invoke-static {}, Lcom/google/c/c/cz;->b()Lcom/google/c/c/cz;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/ah;->a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;

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
    .line 615
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/b/ah;->a(Ljava/lang/Object;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 615
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/ah;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/b/ah;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public final synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2

    .prologue
    .line 615
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    check-cast p3, Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p4}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v1

    invoke-static {p1, v0, p3, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Lcom/google/c/c/aj;Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/ah;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 615
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/b/x;->a(Z)Lcom/google/c/c/aj;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->b(Ljava/lang/Comparable;Lcom/google/c/c/aj;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/ah;->a(Lcom/google/android/gms/fitness/b/b/u;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
