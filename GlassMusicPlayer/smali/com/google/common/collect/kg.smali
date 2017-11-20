.class final Lcom/google/common/collect/kg;
.super Lcom/google/common/collect/ma;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/google/common/collect/kg;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1254
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return v2

    .line 1257
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 1258
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1261
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1262
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/kg;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/common/collect/Multimaps$MapMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1232
    new-instance v0, Lcom/google/common/collect/kh;

    iget-object v1, p0, Lcom/google/common/collect/kg;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/kh;-><init>(Lcom/google/common/collect/kg;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1267
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return v2

    .line 1270
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 1271
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1274
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1275
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/kg;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v3, v3, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/google/common/collect/kg;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
