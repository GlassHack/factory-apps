.class final Lcom/google/common/collect/Iterators$ConcatenatedIterator$1;
.super Lcom/google/common/collect/MultitransformedIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators$ConcatenatedIterator;->getComponentIterators(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultitransformedIterator",
        "<",
        "Ljava/util/Iterator",
        "<+TT;>;",
        "Ljava/util/Iterator",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1300
    .local p1, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Iterator<+TT;>;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MultitransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1300
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Iterators$ConcatenatedIterator$1;->transform(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1303
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    instance-of v1, p1, Lcom/google/common/collect/Iterators$ConcatenatedIterator;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1304
    check-cast v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;

    .line 1306
    .local v0, "concatIterator":Lcom/google/common/collect/Iterators$ConcatenatedIterator;, "Lcom/google/common/collect/Iterators$ConcatenatedIterator<+TT;>;"
    iget-object v1, v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-static {v1}, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->access$000(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    .line 1308
    .end local v0    # "concatIterator":Lcom/google/common/collect/Iterators$ConcatenatedIterator;, "Lcom/google/common/collect/Iterators$ConcatenatedIterator<+TT;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    goto :goto_0
.end method
