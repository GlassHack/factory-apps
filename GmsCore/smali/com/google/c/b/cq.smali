.class final Lcom/google/c/b/cq;
.super Ljava/util/AbstractQueue;


# instance fields
.field final a:Lcom/google/c/b/dq;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Lcom/google/c/b/cr;

    invoke-direct {v0}, Lcom/google/c/b/cr;-><init>()V

    iput-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    return-void
.end method

.method private a()Lcom/google/c/b/dq;
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    if-eq v0, v1, :cond_0

    invoke-interface {v0}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v1

    invoke-static {v0}, Lcom/google/c/b/ch;->c(Lcom/google/c/b/dq;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    iget-object v1, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-interface {v0, v1}, Lcom/google/c/b/dq;->c(Lcom/google/c/b/dq;)V

    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    iget-object v1, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-interface {v0, v1}, Lcom/google/c/b/dq;->d(Lcom/google/c/b/dq;)V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/google/c/b/dq;

    invoke-interface {p1}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v0

    sget-object v1, Lcom/google/c/b/dp;->a:Lcom/google/c/b/dp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/c/b/cs;

    invoke-direct {p0}, Lcom/google/c/b/cq;->a()Lcom/google/c/b/dq;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/cs;-><init>(Lcom/google/c/b/cq;Lcom/google/c/b/dq;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/google/c/b/dq;

    invoke-interface {p1}, Lcom/google/c/b/dq;->f()Lcom/google/c/b/dq;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)V

    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->f()Lcom/google/c/b/dq;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)V

    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-static {p1, v0}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/c/b/cq;->a()Lcom/google/c/b/dq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/c/b/cq;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/google/c/b/dq;

    invoke-interface {p1}, Lcom/google/c/b/dq;->f()Lcom/google/c/b/dq;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/b/ch;->b(Lcom/google/c/b/dq;Lcom/google/c/b/dq;)V

    invoke-static {p1}, Lcom/google/c/b/ch;->c(Lcom/google/c/b/dq;)V

    sget-object v0, Lcom/google/c/b/dp;->a:Lcom/google/c/b/dp;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    invoke-interface {v0}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/c/b/cq;->a:Lcom/google/c/b/dq;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lcom/google/c/b/dq;->e()Lcom/google/c/b/dq;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
