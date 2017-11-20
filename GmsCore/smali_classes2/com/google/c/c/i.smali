.class final Lcom/google/c/c/i;
.super Lcom/google/c/c/ax;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/c/f;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/c/c/f;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/c/c/i;->a:Lcom/google/c/c/f;

    invoke-direct {p0}, Lcom/google/c/c/ax;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/google/c/c/i;->b:Ljava/util/Map;

    .line 333
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/i;->c:Ljava/util/Set;

    .line 334
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/c/c/i;->c:Ljava/util/Set;

    return-object v0
.end method

.method protected final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/c/c/i;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/c/c/i;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/c/c/i;->a:Lcom/google/c/c/f;

    invoke-static {v1}, Lcom/google/c/c/f;->a(Lcom/google/c/c/f;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/google/c/c/i;->a:Lcom/google/c/c/f;

    invoke-virtual {v0}, Lcom/google/c/c/f;->clear()V

    .line 390
    :cond_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/google/c/c/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 385
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/c/c/i;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/c/c/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 343
    new-instance v1, Lcom/google/c/c/j;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/j;-><init>(Lcom/google/c/c/i;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/c/c/i;->a:Lcom/google/c/c/f;

    iget-object v1, p0, Lcom/google/c/c/i;->b:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/google/c/c/f;->a(Lcom/google/c/c/f;Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/c/c/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/c/c/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/bv;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
