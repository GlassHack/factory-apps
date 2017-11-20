.class final Lcom/google/c/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/util/Map$Entry;

.field c:I

.field d:Z

.field final synthetic e:Lcom/google/c/c/f;


# direct methods
.method constructor <init>(Lcom/google/c/c/f;)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/c/c/k;->e:Lcom/google/c/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {p1}, Lcom/google/c/c/f;->a(Lcom/google/c/c/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/k;->a:Ljava/util/Iterator;

    .line 173
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/google/c/c/k;->c:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/k;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/c/c/k;->c:I

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/c/c/k;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/c/c/k;->b:Ljava/util/Map$Entry;

    .line 184
    iget-object v0, p0, Lcom/google/c/c/k;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    invoke-virtual {v0}, Lcom/google/c/c/ao;->a()I

    move-result v0

    iput v0, p0, Lcom/google/c/c/k;->c:I

    .line 186
    :cond_0
    iget v0, p0, Lcom/google/c/c/k;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/c/k;->c:I

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/c/k;->d:Z

    .line 188
    iget-object v0, p0, Lcom/google/c/c/k;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/c/c/k;->d:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/c/a/ah;->b(ZLjava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/google/c/c/k;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    invoke-virtual {v0}, Lcom/google/c/c/ao;->a()I

    move-result v0

    .line 196
    if-gtz v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/k;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/c/c/ao;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/google/c/c/k;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/google/c/c/k;->e:Lcom/google/c/c/f;

    invoke-static {v0}, Lcom/google/c/c/f;->b(Lcom/google/c/c/f;)J

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/c/k;->d:Z

    .line 204
    return-void
.end method
