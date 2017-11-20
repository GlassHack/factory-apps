.class final Lcom/google/common/collect/nc;
.super Lcom/google/common/collect/np;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/nb;


# direct methods
.method constructor <init>(Lcom/google/common/collect/nb;)V
    .locals 2

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    iget-object v0, p1, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/np;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1090
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1091
    check-cast p1, Ljava/util/Map$Entry;

    .line 1092
    iget-object v0, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    iget-object v0, v0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/nb;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Lcom/google/common/collect/nd;

    iget-object v1, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    iget-object v1, v1, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/nd;-><init>(Lcom/google/common/collect/nc;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/nc;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    check-cast p1, Ljava/util/Map$Entry;

    .line 1107
    iget-object v0, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    iget-object v0, v0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1108
    const/4 v0, 0x1

    .line 1110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    .line 1115
    const/4 v0, 0x0

    .line 1116
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1117
    invoke-virtual {p0, v2}, Lcom/google/common/collect/nc;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1118
    goto :goto_0

    .line 1119
    :cond_0
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 5

    .prologue
    .line 1124
    const/4 v0, 0x0

    .line 1125
    iget-object v1, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    iget-object v1, v1, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1126
    new-instance v3, Lcom/google/common/collect/ImmutableEntry;

    iget-object v4, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    iget-object v4, v4, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    iget-object v0, v0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-static {v0, v2}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1128
    const/4 v0, 0x1

    goto :goto_0

    .line 1131
    :cond_1
    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/common/collect/nc;->a:Lcom/google/common/collect/nb;

    iget-object v0, v0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
