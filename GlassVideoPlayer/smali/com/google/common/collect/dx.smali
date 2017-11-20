.class public Lcom/google/common/collect/dx;
.super Lcom/google/common/collect/di;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/kp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/dx;-><init>(Lcom/google/common/collect/kp;)V

    .line 500
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/kp;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/google/common/collect/di;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/google/common/collect/dx;->a:Lcom/google/common/collect/kp;

    .line 504
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dx;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dx;->b(Ljava/lang/Object;)Lcom/google/common/collect/dx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/di;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/google/common/collect/dx;->b(Ljava/util/Iterator;)Lcom/google/common/collect/dx;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;I)Lcom/google/common/collect/dx;
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/common/collect/dx;->a:Lcom/google/common/collect/kp;

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/common/collect/kp;->add(Ljava/lang/Object;I)I

    .line 534
    return-object p0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/dx;
    .locals 3

    .prologue
    .line 577
    instance-of v0, p1, Lcom/google/common/collect/kp;

    if-eqz v0, :cond_0

    .line 578
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/kp;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 580
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/dx;->a(Ljava/lang/Object;I)Lcom/google/common/collect/dx;

    goto :goto_0

    .line 583
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/di;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/di;

    .line 585
    :cond_1
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/dx;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/common/collect/dx;->a:Lcom/google/common/collect/kp;

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/kp;->add(Ljava/lang/Object;)Z

    .line 516
    return-object p0
.end method

.method public b(Ljava/util/Iterator;)Lcom/google/common/collect/dx;
    .locals 0

    .prologue
    .line 598
    invoke-super {p0, p1}, Lcom/google/common/collect/di;->a(Ljava/util/Iterator;)Lcom/google/common/collect/di;

    .line 599
    return-object p0
.end method
