.class final Lcom/google/common/collect/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field b:Ljava/util/Map$Entry;

.field c:I

.field d:Z

.field final synthetic e:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/common/collect/z;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Iterator;

    .line 165
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/common/collect/z;->c:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Iterator;

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
    .line 172
    iget v0, p0, Lcom/google/common/collect/z;->c:I

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/z;->b:Ljava/util/Map$Entry;

    .line 174
    iget-object v0, p0, Lcom/google/common/collect/z;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/z;->c:I

    .line 176
    :cond_0
    iget v0, p0, Lcom/google/common/collect/z;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/z;->c:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/z;->d:Z

    .line 178
    iget-object v0, p0, Lcom/google/common/collect/z;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/common/collect/z;->d:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/ah;->b(ZLjava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/google/common/collect/z;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v0

    .line 184
    if-gtz v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/z;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Count;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/common/collect/z;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/z;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$110(Lcom/google/common/collect/AbstractMapBasedMultiset;)J

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/z;->d:Z

    .line 192
    return-void
.end method
