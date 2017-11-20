.class final Lcom/google/common/collect/bo;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ConcurrentHashMultiset;

.field private b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 1

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 512
    iget-object v0, p0, Lcom/google/common/collect/bo;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bo;->b:Ljava/util/Iterator;

    return-void
.end method

.method private c()Lcom/google/common/collect/kq;
    .locals 2

    .prologue
    .line 517
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/bo;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/google/common/collect/bo;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 523
    :goto_0
    return-object v0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/bo;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 521
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 522
    if-eqz v1, :cond_0

    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/kq;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/google/common/collect/bo;->c()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method
