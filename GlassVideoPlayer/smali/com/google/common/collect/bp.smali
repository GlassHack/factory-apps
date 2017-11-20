.class final Lcom/google/common/collect/bp;
.super Lcom/google/common/collect/ch;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;

.field private c:Lcom/google/common/collect/kq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/common/collect/bp;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/bp;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ch;-><init>()V

    return-void
.end method

.method private b()Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 539
    invoke-super {p0}, Lcom/google/common/collect/ch;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    iput-object v0, p0, Lcom/google/common/collect/bp;->c:Lcom/google/common/collect/kq;

    .line 540
    iget-object v0, p0, Lcom/google/common/collect/bp;->c:Lcom/google/common/collect/kq;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/common/collect/bp;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/google/common/collect/bp;->b()Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 545
    iget-object v0, p0, Lcom/google/common/collect/bp;->c:Lcom/google/common/collect/kq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 546
    iget-object v0, p0, Lcom/google/common/collect/bp;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iget-object v2, p0, Lcom/google/common/collect/bp;->c:Lcom/google/common/collect/kq;

    invoke-interface {v2}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->setCount(Ljava/lang/Object;I)I

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/bp;->c:Lcom/google/common/collect/kq;

    .line 548
    return-void

    :cond_0
    move v0, v1

    .line 545
    goto :goto_0
.end method
