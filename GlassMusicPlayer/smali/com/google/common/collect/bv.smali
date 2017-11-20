.class final Lcom/google/common/collect/bv;
.super Lcom/google/common/collect/cj;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ListIterator;

.field private final b:Lcom/google/common/collect/bs;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Lcom/google/common/collect/bs;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/common/collect/cj;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/google/common/collect/bv;->a:Ljava/util/ListIterator;

    .line 320
    iput-object p2, p0, Lcom/google/common/collect/bv;->b:Lcom/google/common/collect/bs;

    .line 321
    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/common/collect/bv;->b()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/common/collect/bv;->b:Lcom/google/common/collect/bs;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bs;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/google/common/collect/bv;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method protected final b()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/common/collect/bv;->a:Ljava/util/ListIterator;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/common/collect/bv;->b()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/common/collect/bv;->b:Lcom/google/common/collect/bs;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bs;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/google/common/collect/bv;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 338
    return-void
.end method
