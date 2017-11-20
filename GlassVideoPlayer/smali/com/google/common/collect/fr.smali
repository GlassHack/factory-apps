.class final Lcom/google/common/collect/fr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:I

.field b:Lcom/google/common/collect/fq;

.field c:Lcom/google/common/collect/fq;

.field d:Lcom/google/common/collect/fq;

.field e:I

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/common/collect/fr;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/fr;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fr;->e:I

    .line 313
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    .line 314
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;I)V
    .locals 2

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/common/collect/fr;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/fr;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fr;->e:I

    .line 317
    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v1

    .line 318
    invoke-static {p2, v1}, Lcom/google/common/base/ah;->b(II)I

    .line 319
    div-int/lit8 v0, v1, 0x2

    if-lt p2, v0, :cond_0

    .line 320
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fr;->d:Lcom/google/common/collect/fq;

    .line 321
    iput v1, p0, Lcom/google/common/collect/fr;->a:I

    .line 322
    :goto_0
    add-int/lit8 v0, p2, 0x1

    if-ge p2, v1, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/google/common/collect/fr;->c()Lcom/google/common/collect/fq;

    move p2, v0

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    .line 327
    :goto_1
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/google/common/collect/fr;->b()Lcom/google/common/collect/fq;

    move p2, v0

    goto :goto_1

    .line 331
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    .line 332
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/collect/fr;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/fr;->e:I

    if-eq v0, v1, :cond_0

    .line 336
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 338
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/common/collect/fq;)V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private b()Lcom/google/common/collect/fq;
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/common/collect/fr;->a()V

    .line 348
    iget-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fr;->d:Lcom/google/common/collect/fq;

    .line 350
    iget-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    .line 351
    iget v0, p0, Lcom/google/common/collect/fr;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fr;->a:I

    .line 352
    iget-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/fq;)V
    .locals 1

    .prologue
    .line 396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private c()Lcom/google/common/collect/fq;
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/google/common/collect/fr;->a()V

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/fr;->d:Lcom/google/common/collect/fq;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/google/common/collect/fr;->d:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    .line 378
    iget-object v0, p0, Lcom/google/common/collect/fr;->d:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fr;->d:Lcom/google/common/collect/fq;

    .line 379
    iget v0, p0, Lcom/google/common/collect/fr;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fr;->a:I

    .line 380
    iget-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 401
    iget-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    iput-object p1, v0, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    .line 402
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 305
    check-cast p1, Lcom/google/common/collect/fq;

    invoke-static {p1}, Lcom/google/common/collect/fr;->b(Lcom/google/common/collect/fq;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/common/collect/fr;->a()V

    .line 343
    iget-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/common/collect/fr;->a()V

    .line 371
    iget-object v0, p0, Lcom/google/common/collect/fr;->d:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/google/common/collect/fr;->b()Lcom/google/common/collect/fq;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/google/common/collect/fr;->a:I

    return v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/google/common/collect/fr;->c()Lcom/google/common/collect/fq;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/google/common/collect/fr;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/common/collect/fr;->a()V

    .line 357
    iget-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 358
    iget-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    iget-object v1, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    if-eq v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->d:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fr;->d:Lcom/google/common/collect/fq;

    .line 360
    iget v0, p0, Lcom/google/common/collect/fr;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fr;->a:I

    .line 364
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/fr;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fq;)V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    .line 366
    iget-object v0, p0, Lcom/google/common/collect/fr;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fr;->e:I

    .line 367
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/fr;->c:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fr;->b:Lcom/google/common/collect/fq;

    goto :goto_1
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 305
    check-cast p1, Lcom/google/common/collect/fq;

    invoke-static {p1}, Lcom/google/common/collect/fr;->a(Lcom/google/common/collect/fq;)V

    return-void
.end method
