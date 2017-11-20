.class final Lcom/google/common/collect/mu;
.super Lcom/google/common/collect/ma;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/mq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mq;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v0}, Lcom/google/common/collect/mq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 683
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    iget-object v1, v1, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    iget-object v1, v1, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v0}, Lcom/google/common/collect/mq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    iget-object v0, v0, Lcom/google/common/collect/mq;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    iget-object v1, v1, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 687
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    new-instance v0, Lcom/google/common/collect/mv;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/mv;-><init>(Lcom/google/common/collect/mu;Ljava/util/Collection;)V

    .line 694
    iget-object v1, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/mq;->a(Lcom/google/common/base/aj;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/common/collect/mu;->a:Lcom/google/common/collect/mq;

    invoke-virtual {v0}, Lcom/google/common/collect/mq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
