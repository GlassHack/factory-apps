.class abstract Lcom/google/c/b/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/c/b/an;

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field f:Lcom/google/c/b/am;

.field g:Lcom/google/c/b/bl;

.field h:Lcom/google/c/b/bl;

.field final synthetic i:Lcom/google/c/b/n;


# direct methods
.method constructor <init>(Lcom/google/c/b/n;)V
    .locals 1

    .prologue
    .line 4290
    iput-object p1, p0, Lcom/google/c/b/af;->i:Lcom/google/c/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4291
    iget-object v0, p1, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/b/af;->b:I

    .line 4292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/b/af;->c:I

    .line 4293
    invoke-direct {p0}, Lcom/google/c/b/af;->b()V

    .line 4294
    return-void
.end method

.method private a(Lcom/google/c/b/am;)Z
    .locals 4

    .prologue
    .line 4353
    :try_start_0
    iget-object v0, p0, Lcom/google/c/b/af;->i:Lcom/google/c/b/n;

    iget-object v0, v0, Lcom/google/c/b/n;->r:Lcom/google/c/a/bc;

    invoke-virtual {v0}, Lcom/google/c/a/bc;->a()J

    move-result-wide v0

    .line 4354
    invoke-interface {p1}, Lcom/google/c/b/am;->d()Ljava/lang/Object;

    move-result-object v2

    .line 4355
    iget-object v3, p0, Lcom/google/c/b/af;->i:Lcom/google/c/b/n;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/c/b/n;->a(Lcom/google/c/b/am;J)Ljava/lang/Object;

    move-result-object v0

    .line 4356
    if-eqz v0, :cond_0

    .line 4357
    new-instance v1, Lcom/google/c/b/bl;

    iget-object v3, p0, Lcom/google/c/b/af;->i:Lcom/google/c/b/n;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/c/b/bl;-><init>(Lcom/google/c/b/n;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/c/b/af;->g:Lcom/google/c/b/bl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4358
    iget-object v0, p0, Lcom/google/c/b/af;->d:Lcom/google/c/b/an;

    invoke-virtual {v0}, Lcom/google/c/b/an;->b()V

    const/4 v0, 0x1

    .line 4361
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/c/b/af;->d:Lcom/google/c/b/an;

    invoke-virtual {v0}, Lcom/google/c/b/an;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/b/af;->d:Lcom/google/c/b/an;

    invoke-virtual {v1}, Lcom/google/c/b/an;->b()V

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 4297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/b/af;->g:Lcom/google/c/b/bl;

    .line 4299
    invoke-direct {p0}, Lcom/google/c/b/af;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4317
    :cond_0
    :goto_0
    return-void

    .line 4303
    :cond_1
    invoke-direct {p0}, Lcom/google/c/b/af;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4307
    :cond_2
    iget v0, p0, Lcom/google/c/b/af;->b:I

    if-ltz v0, :cond_0

    .line 4308
    iget-object v0, p0, Lcom/google/c/b/af;->i:Lcom/google/c/b/n;

    iget-object v0, v0, Lcom/google/c/b/n;->e:[Lcom/google/c/b/an;

    iget v1, p0, Lcom/google/c/b/af;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/c/b/af;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/c/b/af;->d:Lcom/google/c/b/an;

    .line 4309
    iget-object v0, p0, Lcom/google/c/b/af;->d:Lcom/google/c/b/an;

    iget v0, v0, Lcom/google/c/b/an;->b:I

    if-eqz v0, :cond_2

    .line 4310
    iget-object v0, p0, Lcom/google/c/b/af;->d:Lcom/google/c/b/an;

    iget-object v0, v0, Lcom/google/c/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/c/b/af;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4311
    iget-object v0, p0, Lcom/google/c/b/af;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/c/b/af;->c:I

    .line 4312
    invoke-direct {p0}, Lcom/google/c/b/af;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 4323
    iget-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    if-eqz v0, :cond_1

    .line 4324
    iget-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    invoke-interface {v0}, Lcom/google/c/b/am;->b()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    :goto_0
    iget-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    if-eqz v0, :cond_1

    .line 4325
    iget-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    invoke-direct {p0, v0}, Lcom/google/c/b/af;->a(Lcom/google/c/b/am;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4326
    const/4 v0, 0x1

    .line 4330
    :goto_1
    return v0

    .line 4324
    :cond_0
    iget-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    invoke-interface {v0}, Lcom/google/c/b/am;->b()Lcom/google/c/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    goto :goto_0

    .line 4330
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 4337
    :cond_0
    iget v0, p0, Lcom/google/c/b/af;->c:I

    if-ltz v0, :cond_2

    .line 4338
    iget-object v0, p0, Lcom/google/c/b/af;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/c/b/af;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/c/b/af;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/am;

    iput-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    if-eqz v0, :cond_0

    .line 4339
    iget-object v0, p0, Lcom/google/c/b/af;->f:Lcom/google/c/b/am;

    invoke-direct {p0, v0}, Lcom/google/c/b/af;->a(Lcom/google/c/b/am;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/c/b/af;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4340
    :cond_1
    const/4 v0, 0x1

    .line 4344
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/c/b/bl;
    .locals 1

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/google/c/b/af;->g:Lcom/google/c/b/bl;

    if-nez v0, :cond_0

    .line 4374
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 4376
    :cond_0
    iget-object v0, p0, Lcom/google/c/b/af;->g:Lcom/google/c/b/bl;

    iput-object v0, p0, Lcom/google/c/b/af;->h:Lcom/google/c/b/bl;

    .line 4377
    invoke-direct {p0}, Lcom/google/c/b/af;->b()V

    .line 4378
    iget-object v0, p0, Lcom/google/c/b/af;->h:Lcom/google/c/b/bl;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 4369
    iget-object v0, p0, Lcom/google/c/b/af;->g:Lcom/google/c/b/bl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/google/c/b/af;->h:Lcom/google/c/b/bl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->b(Z)V

    .line 4383
    iget-object v0, p0, Lcom/google/c/b/af;->i:Lcom/google/c/b/n;

    iget-object v1, p0, Lcom/google/c/b/af;->h:Lcom/google/c/b/bl;

    invoke-virtual {v1}, Lcom/google/c/b/bl;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/b/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/b/af;->h:Lcom/google/c/b/bl;

    .line 4385
    return-void

    .line 4382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
