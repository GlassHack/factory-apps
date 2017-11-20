.class Lcom/google/common/collect/il;
.super Lcom/google/common/collect/iz;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/base/w;

.field private final b:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/base/w;)V
    .locals 1

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/google/common/collect/iz;-><init>()V

    .line 707
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/common/collect/il;->b:Ljava/util/Set;

    .line 708
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/w;

    iput-object v0, p0, Lcom/google/common/collect/il;->a:Lcom/google/common/base/w;

    .line 709
    return-void
.end method


# virtual methods
.method a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/common/collect/il;->b:Ljava/util/Set;

    return-object v0
.end method

.method protected final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 764
    new-instance v0, Lcom/google/common/collect/im;

    invoke-direct {v0, p0}, Lcom/google/common/collect/im;-><init>(Lcom/google/common/collect/il;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/google/common/collect/il;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 760
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/google/common/collect/il;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/google/common/collect/il;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/google/common/collect/il;->a:Lcom/google/common/base/w;

    invoke-interface {v0, p1}, Lcom/google/common/base/w;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/google/common/collect/il;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/common/collect/il;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/google/common/collect/il;->a:Lcom/google/common/base/w;

    invoke-interface {v0, p1}, Lcom/google/common/base/w;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/common/collect/il;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/common/collect/il;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/il;->a:Lcom/google/common/base/w;

    invoke-static {v0, v1}, Lcom/google/common/collect/bb;->a(Ljava/util/Collection;Lcom/google/common/base/w;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
