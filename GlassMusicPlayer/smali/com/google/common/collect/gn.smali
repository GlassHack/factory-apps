.class Lcom/google/common/collect/gn;
.super Lcom/google/common/collect/cf;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/gf;

.field final b:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/collect/gf;)V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/google/common/collect/cf;-><init>()V

    .line 600
    iput-object p1, p0, Lcom/google/common/collect/gn;->b:Ljava/util/Collection;

    .line 601
    iput-object p2, p0, Lcom/google/common/collect/gn;->a:Lcom/google/common/collect/gf;

    .line 602
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/common/collect/gn;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gn;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/common/collect/gn;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/common/collect/gn;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/common/collect/gn;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 612
    new-instance v1, Lcom/google/common/collect/go;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/go;-><init>(Lcom/google/common/collect/gn;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/google/common/collect/gn;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gn;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gn;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/google/common/collect/gn;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gn;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
