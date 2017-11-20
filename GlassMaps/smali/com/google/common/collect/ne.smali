.class final Lcom/google/common/collect/ne;
.super Lcom/google/common/collect/no;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/nb;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/nb;)V
    .locals 2

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    iget-object v0, p1, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/no;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/nb;Lcom/google/common/collect/mn;)V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lcom/google/common/collect/ne;-><init>(Lcom/google/common/collect/nb;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    invoke-virtual {v0}, Lcom/google/common/collect/nb;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    invoke-virtual {v0}, Lcom/google/common/collect/nb;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    iget-object v1, v1, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1146
    const/4 v0, 0x1

    .line 1149
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 1154
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    const/4 v0, 0x0

    .line 1156
    iget-object v1, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

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

    .line 1157
    iget-object v3, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    iget-object v3, v3, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    iget-object v0, v0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-static {v0, v2}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1159
    const/4 v0, 0x1

    goto :goto_0

    .line 1162
    :cond_1
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 1167
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const/4 v0, 0x0

    .line 1169
    iget-object v1, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

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

    .line 1170
    iget-object v3, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    iget-object v3, v3, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    iget-object v0, v0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-static {v0, v2}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1172
    const/4 v0, 0x1

    goto :goto_0

    .line 1175
    :cond_1
    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/common/collect/ne;->a:Lcom/google/common/collect/nb;

    iget-object v0, v0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
