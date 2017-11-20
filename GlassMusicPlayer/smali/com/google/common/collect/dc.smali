.class abstract Lcom/google/common/collect/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:I

.field c:Lcom/google/common/collect/ct;

.field d:Lcom/google/common/collect/ct;

.field e:I

.field final synthetic f:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iput-object p1, p0, Lcom/google/common/collect/dc;->f:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/dc;->b:I

    .line 331
    iput-object v1, p0, Lcom/google/common/collect/dc;->c:Lcom/google/common/collect/ct;

    .line 332
    iput-object v1, p0, Lcom/google/common/collect/dc;->d:Lcom/google/common/collect/ct;

    .line 333
    iget-object v0, p0, Lcom/google/common/collect/dc;->f:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/dc;->e:I

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/common/collect/dc;->f:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/dc;->e:I

    if-eq v0, v1, :cond_0

    .line 337
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method abstract a(Lcom/google/common/collect/ct;)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 342
    invoke-direct {p0}, Lcom/google/common/collect/dc;->a()V

    .line 343
    iget-object v1, p0, Lcom/google/common/collect/dc;->c:Lcom/google/common/collect/ct;

    if-eqz v1, :cond_1

    .line 353
    :goto_0
    return v0

    .line 351
    :cond_0
    iget v1, p0, Lcom/google/common/collect/dc;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/dc;->b:I

    .line 346
    :cond_1
    iget v1, p0, Lcom/google/common/collect/dc;->b:I

    iget-object v2, p0, Lcom/google/common/collect/dc;->f:Lcom/google/common/collect/HashBiMap;

    invoke-static {v2}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/ct;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 347
    iget-object v1, p0, Lcom/google/common/collect/dc;->f:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/ct;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/dc;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/google/common/collect/dc;->f:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/ct;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/dc;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/collect/dc;->b:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/common/collect/dc;->c:Lcom/google/common/collect/ct;

    goto :goto_0

    .line 353
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/common/collect/dc;->a()V

    .line 358
    invoke-virtual {p0}, Lcom/google/common/collect/dc;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/dc;->c:Lcom/google/common/collect/ct;

    .line 363
    iget-object v1, v0, Lcom/google/common/collect/ct;->e:Lcom/google/common/collect/ct;

    iput-object v1, p0, Lcom/google/common/collect/dc;->c:Lcom/google/common/collect/ct;

    .line 364
    iput-object v0, p0, Lcom/google/common/collect/dc;->d:Lcom/google/common/collect/ct;

    .line 365
    invoke-virtual {p0, v0}, Lcom/google/common/collect/dc;->a(Lcom/google/common/collect/ct;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/common/collect/dc;->a()V

    .line 370
    iget-object v0, p0, Lcom/google/common/collect/dc;->d:Lcom/google/common/collect/ct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Only one remove() call allowed per call to next"

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/google/common/collect/dc;->f:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/dc;->d:Lcom/google/common/collect/ct;

    invoke-static {v0, v1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/ct;)V

    .line 372
    iget-object v0, p0, Lcom/google/common/collect/dc;->f:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/dc;->e:I

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/dc;->d:Lcom/google/common/collect/ct;

    .line 374
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
