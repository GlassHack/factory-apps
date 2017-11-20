.class final Lcom/google/common/collect/kl;
.super Lcom/google/common/collect/cf;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/google/common/collect/cf;-><init>()V

    .line 631
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/kl;->a:Ljava/util/Collection;

    .line 632
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lcom/google/common/collect/kl;->standardContains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Lcom/google/common/collect/kl;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/common/collect/kl;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/common/collect/kl;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 642
    new-instance v1, Lcom/google/common/collect/km;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/km;-><init>(Lcom/google/common/collect/kl;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/google/common/collect/kl;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/google/common/collect/kl;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
