.class final Lcom/google/common/collect/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/m;


# direct methods
.method constructor <init>(Lcom/google/common/collect/m;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/m;

    iput-object p2, p0, Lcom/google/common/collect/n;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/common/collect/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/common/collect/n;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    .line 839
    iget-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/ej;->a(Z)V

    .line 844
    iget-object v0, p0, Lcom/google/common/collect/n;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 845
    iget-object v1, p0, Lcom/google/common/collect/n;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 846
    iget-object v1, p0, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/m;

    iget-object v1, v1, Lcom/google/common/collect/m;->b:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 847
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 848
    return-void

    .line 843
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
