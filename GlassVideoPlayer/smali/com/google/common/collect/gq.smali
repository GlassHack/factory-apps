.class final Lcom/google/common/collect/gq;
.super Lcom/google/common/collect/ck;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Set;

.field b:Ljava/util/Collection;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/common/collect/gq;->d:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iput-object p2, p0, Lcom/google/common/collect/gq;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ck;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/gq;->d:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 448
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 448
    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/google/common/collect/gq;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/common/collect/gq;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/common/collect/gq;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/common/collect/gq;->a:Ljava/util/Set;

    .line 437
    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/common/collect/gq;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/gq;->d:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iget-object v1, v1, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/gf;

    invoke-static {v0, v1}, Lcom/google/common/collect/MapConstraints;->a(Ljava/util/Set;Lcom/google/common/collect/gf;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gq;->a:Ljava/util/Set;

    .line 440
    :cond_0
    return-object v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/google/common/collect/gq;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/common/collect/gq;->b:Ljava/util/Collection;

    .line 457
    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/google/common/collect/gl;

    invoke-virtual {p0}, Lcom/google/common/collect/gq;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/gq;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/gl;-><init>(Ljava/util/Collection;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/common/collect/gq;->b:Ljava/util/Collection;

    .line 460
    :cond_0
    return-object v0
.end method
