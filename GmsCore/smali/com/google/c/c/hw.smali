.class final Lcom/google/c/c/hw;
.super Lcom/google/c/c/hu;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private synthetic b:Lcom/google/c/c/hv;


# direct methods
.method constructor <init>(Lcom/google/c/c/hv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/hw;->b:Lcom/google/c/c/hv;

    invoke-direct {p0, p1}, Lcom/google/c/c/hu;-><init>(Lcom/google/c/c/ht;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/c/c/hv;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/c/c/hw;->b:Lcom/google/c/c/hv;

    invoke-virtual {p1}, Lcom/google/c/c/hv;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/c/c/hu;-><init>(Lcom/google/c/c/ht;Ljava/util/Iterator;)V

    return-void
.end method

.method private b()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hu;->a()V

    iget-object v0, p0, Lcom/google/c/c/hu;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hw;->b:Lcom/google/c/c/hv;

    invoke-virtual {v0}, Lcom/google/c/c/hv;->isEmpty()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/c/c/hw;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/c/c/hw;->b:Lcom/google/c/c/hv;

    iget-object v1, v1, Lcom/google/c/c/hv;->e:Lcom/google/c/c/hk;

    invoke-static {v1}, Lcom/google/c/c/hk;->c(Lcom/google/c/c/hk;)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/hw;->b:Lcom/google/c/c/hv;

    invoke-virtual {v0}, Lcom/google/c/c/hv;->c()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/hw;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/hw;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/hw;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/hw;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/hw;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
