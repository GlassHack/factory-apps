.class Lcom/google/c/c/hu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field private b:Ljava/util/Collection;

.field private synthetic c:Lcom/google/c/c/ht;


# direct methods
.method constructor <init>(Lcom/google/c/c/ht;)V
    .locals 1

    iput-object p1, p0, Lcom/google/c/c/hu;->c:Lcom/google/c/c/ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/c/c/hu;->c:Lcom/google/c/c/ht;

    iget-object v0, v0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/c/c/hu;->b:Ljava/util/Collection;

    iget-object v0, p1, Lcom/google/c/c/ht;->d:Lcom/google/c/c/hk;

    iget-object v0, p1, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/c/c/hk;->a(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/hu;->a:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lcom/google/c/c/ht;Ljava/util/Iterator;)V
    .locals 1

    iput-object p1, p0, Lcom/google/c/c/hu;->c:Lcom/google/c/c/ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/c/c/hu;->c:Lcom/google/c/c/ht;

    iget-object v0, v0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/c/c/hu;->b:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/c/c/hu;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hu;->c:Lcom/google/c/c/ht;

    invoke-virtual {v0}, Lcom/google/c/c/ht;->a()V

    iget-object v0, p0, Lcom/google/c/c/hu;->c:Lcom/google/c/c/ht;

    iget-object v0, v0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/c/c/hu;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hu;->a()V

    iget-object v0, p0, Lcom/google/c/c/hu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hu;->a()V

    iget-object v0, p0, Lcom/google/c/c/hu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/c/c/hu;->c:Lcom/google/c/c/ht;

    iget-object v0, v0, Lcom/google/c/c/ht;->d:Lcom/google/c/c/hk;

    invoke-static {v0}, Lcom/google/c/c/hk;->b(Lcom/google/c/c/hk;)I

    iget-object v0, p0, Lcom/google/c/c/hu;->c:Lcom/google/c/c/ht;

    invoke-virtual {v0}, Lcom/google/c/c/ht;->b()V

    return-void
.end method
