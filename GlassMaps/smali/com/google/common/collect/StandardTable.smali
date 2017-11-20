.class Lcom/google/common/collect/StandardTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/nw;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final backingMap:Ljava/util/Map;

.field private transient cellSet:Lcom/google/common/collect/mp;

.field private transient columnKeySet:Ljava/util/Set;

.field private transient columnMap:Lcom/google/common/collect/nb;

.field final factory:Lcom/google/common/base/aw;

.field private transient rowKeySet:Lcom/google/common/collect/nk;

.field private transient rowMap:Lcom/google/common/collect/nl;

.field private transient values:Lcom/google/common/collect/nq;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/aw;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    .line 72
    iput-object p2, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/aw;

    .line 73
    return-void
.end method

.method static synthetic access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 218
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrCreate(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 166
    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/aw;

    invoke-interface {v0}, Lcom/google/common/base/aw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 168
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    return-object v0
.end method

.method private removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5

    .prologue
    .line 202
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_0

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 214
    :cond_1
    return-object v2
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->cellSet:Lcom/google/common/collect/mp;

    .line 278
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/mp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/mp;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->cellSet:Lcom/google/common/collect/mp;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 162
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 499
    new-instance v0, Lcom/google/common/collect/mq;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/mq;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    .line 806
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/na;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/na;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/nb;

    .line 1031
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/nb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/nb;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/nb;

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 82
    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_0

    move v0, v1

    .line 94
    :goto_0
    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 90
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 98
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    if-nez p1, :cond_0

    move v0, v1

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 106
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method createColumnKeyIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 894
    new-instance v0, Lcom/google/common/collect/mz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/mz;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 135
    if-ne p1, p0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 138
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/nw;

    if-eqz v0, :cond_1

    .line 139
    check-cast p1, Lcom/google/common/collect/nw;

    .line 140
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/nw;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 118
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0, p2}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {p3}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->getOrCreate(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/nw;)V
    .locals 4

    .prologue
    .line 181
    invoke-interface {p1}, Lcom/google/common/collect/nw;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/nx;

    .line 182
    invoke-interface {v0}, Lcom/google/common/collect/nx;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/nx;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/nx;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 198
    :goto_0
    return-object v0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 191
    if-nez v0, :cond_2

    move-object v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 195
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v0, v1

    .line 198
    goto :goto_0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/google/common/collect/nf;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/nf;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowKeySet:Lcom/google/common/collect/nk;

    .line 767
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/nk;

    invoke-direct {v0, p0}, Lcom/google/common/collect/nk;-><init>(Lcom/google/common/collect/StandardTable;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->rowKeySet:Lcom/google/common/collect/nk;

    :cond_0
    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Lcom/google/common/collect/nl;

    .line 957
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/nl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/nl;-><init>(Lcom/google/common/collect/StandardTable;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Lcom/google/common/collect/nl;

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 128
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->values:Lcom/google/common/collect/nq;

    .line 932
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/nq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/nq;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable;->values:Lcom/google/common/collect/nq;

    :cond_0
    return-object v0
.end method
