.class final Lcom/google/common/collect/fa;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/google/common/collect/fa;->b:Lcom/google/common/collect/LinkedListMultimap;

    iput-object p2, p0, Lcom/google/common/collect/fa;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 3

    .prologue
    .line 704
    new-instance v0, Lcom/google/common/collect/fs;

    iget-object v1, p0, Lcom/google/common/collect/fa;->b:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v2, p0, Lcom/google/common/collect/fa;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/fs;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/google/common/collect/fa;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/google/common/collect/fa;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/common/collect/fa;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/fa;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    .line 699
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/google/common/collect/fl;->c:I

    goto :goto_0
.end method
