.class final Lcom/google/c/c/ga;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private a:Z

.field private b:Z

.field private synthetic c:Ljava/util/ListIterator;

.field private synthetic d:Lcom/google/c/c/fz;


# direct methods
.method constructor <init>(Lcom/google/c/c/fz;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/ga;->d:Lcom/google/c/c/fz;

    iput-object p2, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/c/ga;->a:Z

    iput-boolean v0, p0, Lcom/google/c/c/ga;->b:Z

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/ga;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/c/ga;->a:Z

    iput-boolean v0, p0, Lcom/google/c/c/ga;->b:Z

    iget-object v0, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/ga;->d:Lcom/google/c/c/fz;

    iget-object v1, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/c/c/fz;->a(Lcom/google/c/c/fz;I)I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/ga;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/c/ga;->a:Z

    iput-boolean v0, p0, Lcom/google/c/c/ga;->b:Z

    iget-object v0, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/ga;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/c/ga;->a:Z

    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    iget-object v0, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/c/ga;->b:Z

    iput-boolean v0, p0, Lcom/google/c/c/ga;->a:Z

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/c/ga;->b:Z

    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    iget-object v0, p0, Lcom/google/c/c/ga;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
