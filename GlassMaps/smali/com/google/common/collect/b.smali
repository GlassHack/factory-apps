.class final Lcom/google/common/collect/b;
.super Lcom/google/common/collect/cp;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    .line 273
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/a;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/google/common/collect/b;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 283
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/common/collect/b;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/common/collect/b;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/common/collect/b;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/google/common/collect/c;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/c;-><init>(Lcom/google/common/collect/b;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    .line 292
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 293
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 300
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/common/collect/b;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
