.class final Lcom/google/common/collect/dw;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/common/collect/dw;->d:Lcom/google/common/collect/ImmutableMultiset;

    iput-object p2, p0, Lcom/google/common/collect/dw;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/common/collect/dw;->a:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/dw;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/google/common/collect/dw;->a:I

    if-gtz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/common/collect/dw;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 247
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/dw;->b:Ljava/lang/Object;

    .line 248
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/dw;->a:I

    .line 250
    :cond_0
    iget v0, p0, Lcom/google/common/collect/dw;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/dw;->a:I

    .line 251
    iget-object v0, p0, Lcom/google/common/collect/dw;->b:Ljava/lang/Object;

    return-object v0
.end method
