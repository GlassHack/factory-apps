.class final Lcom/google/c/c/hn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Ljava/util/Iterator;

.field private b:Ljava/util/Collection;

.field private synthetic c:Lcom/google/c/c/hl;


# direct methods
.method constructor <init>(Lcom/google/c/c/hl;)V
    .locals 1

    iput-object p1, p0, Lcom/google/c/c/hn;->c:Lcom/google/c/c/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/c/c/hn;->c:Lcom/google/c/c/hl;

    iget-object v0, v0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/hn;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/c/c/hn;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/c/c/hn;->c:Lcom/google/c/c/hl;

    invoke-virtual {v1, v0}, Lcom/google/c/c/hl;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/c/c/hn;->c:Lcom/google/c/c/hl;

    iget-object v0, v0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    iget-object v1, p0, Lcom/google/c/c/hn;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/c/c/hk;->b(Lcom/google/c/c/hk;I)I

    iget-object v0, p0, Lcom/google/c/c/hn;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method
