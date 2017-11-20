.class final Lcom/google/common/collect/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Set;

.field b:Lcom/google/common/collect/fq;

.field c:Lcom/google/common/collect/fq;

.field d:I

.field final synthetic e:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iget-object v0, p0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fk;->a:Ljava/util/Set;

    .line 408
    iget-object v0, p0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fq;

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fk;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fa;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/google/common/collect/fk;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/fk;->d:I

    if-eq v0, v1, :cond_0

    .line 415
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/google/common/collect/fk;->a()V

    .line 422
    iget-object v0, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

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
    .line 426
    invoke-direct {p0}, Lcom/google/common/collect/fk;->a()V

    .line 427
    iget-object v0, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fq;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fq;

    .line 429
    iget-object v0, p0, Lcom/google/common/collect/fk;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fq;

    iget-object v1, v1, Lcom/google/common/collect/fq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->c:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fq;

    .line 432
    iget-object v0, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/fk;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/fk;->b:Lcom/google/common/collect/fq;

    iget-object v1, v1, Lcom/google/common/collect/fq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/common/collect/fk;->a()V

    .line 438
    iget-object v0, p0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 439
    iget-object v0, p0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fq;

    iget-object v1, v1, Lcom/google/common/collect/fq;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fk;->c:Lcom/google/common/collect/fq;

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/fk;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fk;->d:I

    .line 442
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
