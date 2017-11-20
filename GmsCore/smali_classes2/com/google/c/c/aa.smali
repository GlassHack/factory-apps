.class Lcom/google/c/c/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/c/c/z;


# direct methods
.method constructor <init>(Lcom/google/c/c/z;)V
    .locals 1

    .prologue
    .line 503
    iput-object p1, p0, Lcom/google/c/c/aa;->c:Lcom/google/c/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iget-object v0, p0, Lcom/google/c/c/aa;->c:Lcom/google/c/c/z;

    iget-object v0, v0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/c/c/aa;->b:Ljava/util/Collection;

    .line 504
    iget-object v0, p1, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    iget-object v0, p1, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/c/c/m;->a(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/aa;->a:Ljava/util/Iterator;

    .line 505
    return-void
.end method

.method constructor <init>(Lcom/google/c/c/z;Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/c/c/aa;->c:Lcom/google/c/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iget-object v0, p0, Lcom/google/c/c/aa;->c:Lcom/google/c/c/z;

    iget-object v0, v0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/c/c/aa;->b:Ljava/util/Collection;

    .line 508
    iput-object p2, p0, Lcom/google/c/c/aa;->a:Ljava/util/Iterator;

    .line 509
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/c/c/aa;->c:Lcom/google/c/c/z;

    invoke-virtual {v0}, Lcom/google/c/c/z;->a()V

    .line 517
    iget-object v0, p0, Lcom/google/c/c/aa;->c:Lcom/google/c/c/z;

    iget-object v0, v0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/c/c/aa;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    .line 518
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 520
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/google/c/c/aa;->a()V

    .line 525
    iget-object v0, p0, Lcom/google/c/c/aa;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/c/c/aa;->a()V

    .line 531
    iget-object v0, p0, Lcom/google/c/c/aa;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/c/c/aa;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 537
    iget-object v0, p0, Lcom/google/c/c/aa;->c:Lcom/google/c/c/z;

    iget-object v0, v0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    invoke-static {v0}, Lcom/google/c/c/m;->b(Lcom/google/c/c/m;)I

    .line 538
    iget-object v0, p0, Lcom/google/c/c/aa;->c:Lcom/google/c/c/z;

    invoke-virtual {v0}, Lcom/google/c/c/z;->b()V

    .line 539
    return-void
.end method
