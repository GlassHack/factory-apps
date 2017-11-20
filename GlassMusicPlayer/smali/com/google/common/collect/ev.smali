.class final Lcom/google/common/collect/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/collect/ew;

.field b:Lcom/google/common/collect/ew;

.field final synthetic c:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;)V
    .locals 1

    .prologue
    .line 512
    iput-object p1, p0, Lcom/google/common/collect/ev;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iget-object v0, p0, Lcom/google/common/collect/ev;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/ew;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/ew;->h:Lcom/google/common/collect/ew;

    iput-object v0, p0, Lcom/google/common/collect/ev;->a:Lcom/google/common/collect/ew;

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/common/collect/ev;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ev;->a:Lcom/google/common/collect/ew;

    .line 525
    iput-object v0, p0, Lcom/google/common/collect/ev;->b:Lcom/google/common/collect/ew;

    .line 526
    iget-object v1, p0, Lcom/google/common/collect/ev;->a:Lcom/google/common/collect/ew;

    iget-object v1, v1, Lcom/google/common/collect/ew;->h:Lcom/google/common/collect/ew;

    iput-object v1, p0, Lcom/google/common/collect/ev;->a:Lcom/google/common/collect/ew;

    .line 527
    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/common/collect/ev;->a:Lcom/google/common/collect/ew;

    iget-object v1, p0, Lcom/google/common/collect/ev;->c:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/ew;

    move-result-object v1

    if-eq v0, v1, :cond_0

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
    .line 512
    invoke-direct {p0}, Lcom/google/common/collect/ev;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/common/collect/ev;->b:Lcom/google/common/collect/ew;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/ej;->a(Z)V

    .line 532
    iget-object v0, p0, Lcom/google/common/collect/ev;->c:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, p0, Lcom/google/common/collect/ev;->b:Lcom/google/common/collect/ew;

    invoke-virtual {v1}, Lcom/google/common/collect/ew;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ev;->b:Lcom/google/common/collect/ew;

    invoke-virtual {v2}, Lcom/google/common/collect/ew;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ev;->b:Lcom/google/common/collect/ew;

    .line 534
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
