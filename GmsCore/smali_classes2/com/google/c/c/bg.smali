.class public abstract Lcom/google/c/c/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/ci;
.implements Ljava/io/Serializable;


# instance fields
.field final transient a:Lcom/google/c/c/be;

.field final transient b:I

.field private transient c:Lcom/google/c/c/bb;

.field private transient d:Lcom/google/c/c/bb;


# virtual methods
.method public a()Lcom/google/c/c/bb;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/c/c/bg;->c:Lcom/google/c/c/bb;

    .line 499
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/bh;

    invoke-direct {v0, p0}, Lcom/google/c/c/bh;-><init>(Lcom/google/c/c/bg;)V

    iput-object v0, p0, Lcom/google/c/c/bg;->c:Lcom/google/c/c/bb;

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    invoke-virtual {v0, p1}, Lcom/google/c/c/be;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    invoke-virtual {v0, p1}, Lcom/google/c/c/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 423
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    invoke-virtual {v0}, Lcom/google/c/c/be;->c()Lcom/google/c/c/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bb;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 434
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract c(Ljava/lang/Object;)Lcom/google/c/c/bb;
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/google/c/c/bg;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/c/c/bg;->c(Ljava/lang/Object;)Lcom/google/c/c/bb;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    invoke-virtual {v0}, Lcom/google/c/c/be;->b()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 452
    instance-of v0, p1, Lcom/google/c/c/ci;

    if-eqz v0, :cond_0

    .line 453
    check-cast p1, Lcom/google/c/c/ci;

    .line 454
    iget-object v0, p0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    invoke-interface {p1}, Lcom/google/c/c/ci;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/c/be;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic f()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/c/c/bg;->d:Lcom/google/c/c/bb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/bj;

    invoke-direct {v0, p0}, Lcom/google/c/c/bj;-><init>(Lcom/google/c/c/bg;)V

    iput-object v0, p0, Lcom/google/c/c/bg;->d:Lcom/google/c/c/bb;

    :cond_0
    return-object v0
.end method

.method public synthetic g()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/c/c/bg;->a()Lcom/google/c/c/bb;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    invoke-virtual {v0}, Lcom/google/c/c/be;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic i()Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    invoke-virtual {v0}, Lcom/google/c/c/be;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u_()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/google/c/c/bg;->b:I

    return v0
.end method
