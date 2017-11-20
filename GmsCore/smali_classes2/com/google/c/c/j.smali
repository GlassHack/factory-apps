.class final Lcom/google/c/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/c/c/i;


# direct methods
.method constructor <init>(Lcom/google/c/c/i;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/c/c/j;->c:Lcom/google/c/c/i;

    iput-object p2, p0, Lcom/google/c/c/j;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/c/c/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/c/c/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/c/c/j;->a:Ljava/util/Map$Entry;

    .line 354
    iget-object v0, p0, Lcom/google/c/c/j;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/c/c/j;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/c/a/ah;->b(ZLjava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/google/c/c/j;->c:Lcom/google/c/c/i;

    iget-object v1, v0, Lcom/google/c/c/i;->a:Lcom/google/c/c/f;

    iget-object v0, p0, Lcom/google/c/c/j;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    invoke-virtual {v0}, Lcom/google/c/c/ao;->b()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/c/c/f;->a(Lcom/google/c/c/f;J)J

    .line 362
    iget-object v0, p0, Lcom/google/c/c/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/c/j;->a:Ljava/util/Map$Entry;

    .line 364
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
