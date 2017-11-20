.class public Lcom/google/c/c/ff;
.super Lcom/google/c/c/ez;

# interfaces
.implements Lcom/google/c/c/gi;


# instance fields
.field private final transient b:Lcom/google/c/c/fk;


# direct methods
.method constructor <init>(Lcom/google/c/c/es;ILjava/util/Comparator;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/c/c/ez;-><init>(Lcom/google/c/c/es;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/c/ff;->b:Lcom/google/c/c/fk;

    return-void
.end method

.method public static synthetic a(Lcom/google/c/c/gi;)Lcom/google/c/c/ff;
    .locals 6

    invoke-static {p0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/c/c/gi;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/c/c/ik;->b:Lcom/google/c/c/ik;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/google/c/c/ff;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/c/c/ff;

    iget-object v1, v0, Lcom/google/c/c/ez;->a:Lcom/google/c/c/es;

    invoke-virtual {v1}, Lcom/google/c/c/es;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/google/c/c/es;->b()Lcom/google/c/c/et;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/google/c/c/gi;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/util/Collection;)Lcom/google/c/c/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fc;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2, v4, v0}, Lcom/google/c/c/et;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/et;

    invoke-virtual {v0}, Lcom/google/c/c/fc;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/c/c/ff;

    invoke-virtual {v2}, Lcom/google/c/c/et;->a()Lcom/google/c/c/es;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/c/c/ff;-><init>(Lcom/google/c/c/es;ILjava/util/Comparator;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private c(Ljava/lang/Object;)Lcom/google/c/c/fc;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ff;->a:Lcom/google/c/c/es;

    invoke-virtual {v0, p1}, Lcom/google/c/c/es;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/fc;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ff;->b:Lcom/google/c/c/fk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/c/ff;->b:Lcom/google/c/c/fk;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0
.end method

.method public static f()Lcom/google/c/c/ff;
    .locals 1

    sget-object v0, Lcom/google/c/c/ik;->b:Lcom/google/c/c/ik;

    return-object v0
.end method

.method public static g()Lcom/google/c/c/fg;
    .locals 1

    new-instance v0, Lcom/google/c/c/fg;

    invoke-direct {v0}, Lcom/google/c/c/fg;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/c/c/iw;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/c/c/ff;->c(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/c/c/ff;->c(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method
