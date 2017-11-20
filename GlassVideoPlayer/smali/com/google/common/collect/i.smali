.class Lcom/google/common/collect/i;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final transient a:Ljava/util/Map;

.field transient b:Ljava/util/Set;

.field final synthetic c:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1044
    iput-object p2, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    .line 1045
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1065
    if-nez v0, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1070
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1086
    if-nez v0, :cond_0

    .line 1087
    const/4 v0, 0x0

    .line 1094
    :goto_0
    return-object v0

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v1

    .line 1091
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1092
    iget-object v2, p0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 1093
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    .line 1094
    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 3

    .prologue
    .line 1123
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1124
    iget-object v2, p0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->clear()V

    .line 1120
    :goto_0
    return-void

    .line 1118
    :cond_0
    new-instance v0, Lcom/google/common/collect/k;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k;-><init>(Lcom/google/common/collect/i;)V

    invoke-static {v0}, Lcom/google/common/collect/ej;->e(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/common/collect/i;->b:Ljava/util/Set;

    .line 1052
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/j;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j;-><init>(Lcom/google/common/collect/i;)V

    iput-object v0, p0, Lcom/google/common/collect/i;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1099
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/google/common/collect/i;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
