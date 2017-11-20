.class final Lcom/google/common/collect/j;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/i;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/i;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/i;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/i;

    iget-object v0, v0, Lcom/google/common/collect/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bb;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1136
    new-instance v0, Lcom/google/common/collect/k;

    iget-object v1, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/i;

    invoke-direct {v0, v1}, Lcom/google/common/collect/k;-><init>(Lcom/google/common/collect/i;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    const/4 v0, 0x0

    .line 1153
    :goto_0
    return v0

    .line 1151
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1152
    iget-object v0, p0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/i;

    iget-object v0, v0, Lcom/google/common/collect/i;->c:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$400(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)I

    .line 1153
    const/4 v0, 0x1

    goto :goto_0
.end method
