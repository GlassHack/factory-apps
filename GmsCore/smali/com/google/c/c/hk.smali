.class abstract Lcom/google/c/c/hk;
.super Lcom/google/c/c/ia;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/ia;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    iput-object p1, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/c/c/hk;I)I
    .locals 1

    iget v0, p0, Lcom/google/c/c/hk;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/c/c/hk;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/c/c/hk;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/c/c/gc;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget v0, p0, Lcom/google/c/c/hk;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/c/c/hk;->b:I

    :cond_0
    move v0, v1

    return v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/ht;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/c/hk;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/ht;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/ht;)Ljava/util/List;
    .locals 1

    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/c/c/hq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/c/c/hq;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/ht;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/c/hv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/c/c/hv;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/ht;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/c/c/hk;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/c/c/hk;)I
    .locals 2

    iget v0, p0, Lcom/google/c/c/hk;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/c/c/hk;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/c/c/hk;I)I
    .locals 1

    iget v0, p0, Lcom/google/c/c/hk;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/c/c/hk;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/c/c/hk;)I
    .locals 2

    iget v0, p0, Lcom/google/c/c/hk;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/c/c/hk;->b:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/c/c/hk;->b:I

    return v0
.end method

.method final a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/c/c/hy;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/c/c/hy;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/ht;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/c/c/hx;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/c/c/hx;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/c/c/hk;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/ht;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/c/c/ht;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/c/c/ht;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/c/c/ht;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/c/c/hk;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/c/c/hk;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/c/c/hk;->b:I

    iget-object v2, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/c/c/hk;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/c/hk;->b:I

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/hk;->f()Ljava/util/Collection;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/c/c/hk;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final b()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/c/c/hr;

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/hr;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/c/hl;

    iget-object v1, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/hl;-><init>(Lcom/google/c/c/hk;Ljava/util/Map;)V

    goto :goto_0
.end method

.method abstract f()Ljava/util/Collection;
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/c/hk;->b:I

    return-void
.end method

.method final h()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/c/c/hs;

    iget-object v0, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/hs;-><init>(Lcom/google/c/c/hk;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/c/ho;

    iget-object v1, p0, Lcom/google/c/c/hk;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/ho;-><init>(Lcom/google/c/c/hk;Ljava/util/Map;)V

    goto :goto_0
.end method
