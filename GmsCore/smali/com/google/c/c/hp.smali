.class final Lcom/google/c/c/hp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Ljava/util/Map$Entry;

.field private synthetic b:Ljava/util/Iterator;

.field private synthetic c:Lcom/google/c/c/ho;


# direct methods
.method constructor <init>(Lcom/google/c/c/ho;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/hp;->c:Lcom/google/c/c/ho;

    iput-object p2, p0, Lcom/google/c/c/hp;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hp;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hp;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/c/c/hp;->a:Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/c/c/hp;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/c/c/hp;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/c/fp;->a(Z)V

    iget-object v0, p0, Lcom/google/c/c/hp;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/c/c/hp;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/google/c/c/hp;->c:Lcom/google/c/c/ho;

    iget-object v1, v1, Lcom/google/c/c/ho;->b:Lcom/google/c/c/hk;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/c/c/hk;->b(Lcom/google/c/c/hk;I)I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
