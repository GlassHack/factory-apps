.class final Lcom/google/common/collect/mz;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/Iterator;

.field c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1

    .prologue
    .line 897
    iput-object p1, p0, Lcom/google/common/collect/mz;->d:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 900
    iget-object v0, p0, Lcom/google/common/collect/mz;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/av;

    invoke-interface {v0}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/mz;->a:Ljava/util/Map;

    .line 901
    iget-object v0, p0, Lcom/google/common/collect/mz;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mz;->b:Ljava/util/Iterator;

    .line 902
    invoke-static {}, Lcom/google/common/collect/ej;->a()Lcom/google/common/collect/ol;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mz;->c:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/mn;)V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcom/google/common/collect/mz;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 907
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/mz;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/google/common/collect/mz;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 909
    iget-object v1, p0, Lcom/google/common/collect/mz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/google/common/collect/mz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 916
    :goto_1
    return-object v0

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/mz;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/google/common/collect/mz;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/mz;->c:Ljava/util/Iterator;

    goto :goto_0

    .line 916
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/mz;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method
