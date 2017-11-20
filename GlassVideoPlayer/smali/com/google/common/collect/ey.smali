.class final Lcom/google/common/collect/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/collect/ez;

.field b:Lcom/google/common/collect/ew;

.field c:I

.field final synthetic d:Lcom/google/common/collect/ex;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ex;)V
    .locals 1

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iget-object v0, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    invoke-static {v0}, Lcom/google/common/collect/ex;->a(Lcom/google/common/collect/ex;)Lcom/google/common/collect/ez;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ey;->a:Lcom/google/common/collect/ez;

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    invoke-static {v0}, Lcom/google/common/collect/ex;->b(Lcom/google/common/collect/ex;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ey;->c:I

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    invoke-static {v0}, Lcom/google/common/collect/ex;->b(Lcom/google/common/collect/ex;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/ey;->c:I

    if-eq v0, v1, :cond_0

    .line 367
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 369
    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/google/common/collect/ey;->a()V

    .line 373
    iget-object v0, p0, Lcom/google/common/collect/ey;->a:Lcom/google/common/collect/ez;

    iget-object v1, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/common/collect/ey;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ey;->a:Lcom/google/common/collect/ez;

    check-cast v0, Lcom/google/common/collect/ew;

    .line 381
    invoke-virtual {v0}, Lcom/google/common/collect/ew;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 382
    iput-object v0, p0, Lcom/google/common/collect/ey;->b:Lcom/google/common/collect/ew;

    .line 383
    invoke-virtual {v0}, Lcom/google/common/collect/ew;->b()Lcom/google/common/collect/ez;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ey;->a:Lcom/google/common/collect/ez;

    .line 384
    return-object v1
.end method

.method public final remove()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 388
    invoke-direct {p0}, Lcom/google/common/collect/ey;->a()V

    .line 389
    iget-object v0, p0, Lcom/google/common/collect/ey;->b:Lcom/google/common/collect/ew;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/ej;->a(Z)V

    .line 390
    iget-object v0, p0, Lcom/google/common/collect/ey;->b:Lcom/google/common/collect/ew;

    invoke-virtual {v0}, Lcom/google/common/collect/ew;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 391
    if-nez v0, :cond_2

    .line 392
    :goto_1
    invoke-static {v1}, Lcom/google/common/collect/df;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    iget-object v1, v1, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int v3, v0, v1

    .line 394
    iget-object v0, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    iget-object v0, v0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    aget-object v0, v0, v3

    move-object v1, v2

    :goto_2
    if-eqz v0, :cond_0

    .line 395
    iget-object v4, p0, Lcom/google/common/collect/ey;->b:Lcom/google/common/collect/ew;

    if-ne v0, v4, :cond_4

    .line 396
    if-nez v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    iget-object v1, v1, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    iget-object v0, v0, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    aput-object v0, v1, v3

    .line 402
    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/ey;->b:Lcom/google/common/collect/ew;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/ez;)V

    .line 403
    iget-object v0, p0, Lcom/google/common/collect/ey;->b:Lcom/google/common/collect/ew;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/ew;)V

    .line 404
    iget-object v0, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    invoke-static {v0}, Lcom/google/common/collect/ex;->c(Lcom/google/common/collect/ex;)I

    .line 405
    iget-object v0, p0, Lcom/google/common/collect/ey;->d:Lcom/google/common/collect/ex;

    invoke-static {v0}, Lcom/google/common/collect/ex;->d(Lcom/google/common/collect/ex;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ey;->c:I

    .line 409
    :cond_0
    iput-object v2, p0, Lcom/google/common/collect/ey;->b:Lcom/google/common/collect/ew;

    .line 410
    return-void

    :cond_1
    move v0, v1

    .line 389
    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 400
    :cond_3
    iget-object v0, v0, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    iput-object v0, v1, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    goto :goto_3

    .line 394
    :cond_4
    iget-object v1, v0, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method
