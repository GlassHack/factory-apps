.class final Lcom/google/common/collect/gl;
.super Lcom/google/common/collect/cf;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Collection;

.field final b:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/google/common/collect/cf;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/google/common/collect/gl;->a:Ljava/util/Collection;

    .line 530
    iput-object p2, p0, Lcom/google/common/collect/gl;->b:Ljava/util/Set;

    .line 531
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gl;->standardContains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gl;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/google/common/collect/gl;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/collect/gl;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 541
    new-instance v1, Lcom/google/common/collect/gm;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/gm;-><init>(Lcom/google/common/collect/gl;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gl;->standardRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gl;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gl;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/common/collect/gl;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gl;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
