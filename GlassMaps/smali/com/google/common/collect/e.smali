.class final Lcom/google/common/collect/e;
.super Lcom/google/common/collect/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/a;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/common/collect/e;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 196
    return-void
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/common/collect/e;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/common/collect/e;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$300(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
