.class final Lcom/google/common/collect/kn;
.super Lcom/google/common/collect/ck;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Set;

.field b:Ljava/util/Collection;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/google/common/collect/kn;->d:Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;

    iput-object p2, p0, Lcom/google/common/collect/kn;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ck;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/common/collect/kn;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 532
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/google/common/collect/kn;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/google/common/collect/kn;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/common/collect/kn;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/common/collect/kn;->a:Ljava/util/Set;

    .line 525
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/kn;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/kn;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/google/common/collect/kn;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/common/collect/kn;->b:Ljava/util/Collection;

    .line 540
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/kl;

    iget-object v1, p0, Lcom/google/common/collect/kn;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/kl;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/kn;->b:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
