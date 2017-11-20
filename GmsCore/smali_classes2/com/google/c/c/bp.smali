.class public final Lcom/google/c/c/bp;
.super Lcom/google/c/c/bg;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/dm;


# instance fields
.field private final transient c:Lcom/google/c/c/bq;

.field private transient d:Lcom/google/c/c/bl;


# direct methods
.method private f(Ljava/lang/Object;)Lcom/google/c/c/bl;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/c/c/bp;->a:Lcom/google/c/c/be;

    invoke-virtual {v0, p1}, Lcom/google/c/c/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/bl;

    .line 359
    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-object v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/bp;->c:Lcom/google/c/c/bq;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/google/c/c/bp;->c:Lcom/google/c/c/bq;

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {}, Lcom/google/c/c/bl;->g()Lcom/google/c/c/bl;

    move-result-object v0

    goto :goto_0
.end method

.method private h()Lcom/google/c/c/bl;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/c/c/bp;->d:Lcom/google/c/c/bl;

    .line 424
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/c/c/bg;->a()Lcom/google/c/c/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bl;->a(Ljava/util/Collection;)Lcom/google/c/c/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/bp;->d:Lcom/google/c/c/bl;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/google/c/c/bb;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/c/c/bp;->h()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/Object;)Lcom/google/c/c/bb;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/c/c/bp;->f(Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/c/c/bp;->f(Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/c/c/bp;->f(Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/c/c/bp;->h()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic k()Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/c/c/bp;->h()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method
