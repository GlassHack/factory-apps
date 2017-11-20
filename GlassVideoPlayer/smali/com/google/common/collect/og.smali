.class final Lcom/google/common/collect/og;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/common/collect/oj;

.field b:Lcom/google/common/collect/kq;

.field final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .locals 1

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/common/collect/og;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iget-object v0, p0, Lcom/google/common/collect/og;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$1200(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    return-void
.end method

.method private a()Lcom/google/common/collect/kq;
    .locals 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/common/collect/og;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/og;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->access$1400(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/oj;)Lcom/google/common/collect/kq;

    move-result-object v0

    .line 422
    iput-object v0, p0, Lcom/google/common/collect/og;->b:Lcom/google/common/collect/kq;

    .line 423
    iget-object v1, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    invoke-static {v1}, Lcom/google/common/collect/oj;->g(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/og;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$1500(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/oj;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 424
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    .line 428
    :goto_0
    return-object v0

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    invoke-static {v1}, Lcom/google/common/collect/oj;->g(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return v0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/og;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->access$1300(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    invoke-virtual {v2}, Lcom/google/common/collect/oj;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/og;->a:Lcom/google/common/collect/oj;

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/google/common/collect/og;->a()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/google/common/collect/og;->b:Lcom/google/common/collect/kq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 433
    iget-object v0, p0, Lcom/google/common/collect/og;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/og;->b:Lcom/google/common/collect/kq;

    invoke-interface {v2}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/og;->b:Lcom/google/common/collect/kq;

    .line 435
    return-void

    :cond_0
    move v0, v1

    .line 432
    goto :goto_0
.end method
