.class final Lcom/google/common/collect/gj;
.super Lcom/google/common/collect/cp;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/gf;

.field private final b:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/gf;)V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    .line 690
    iput-object p1, p0, Lcom/google/common/collect/gj;->b:Ljava/util/Set;

    .line 691
    iput-object p2, p0, Lcom/google/common/collect/gj;->a:Lcom/google/common/collect/gf;

    .line 692
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/gj;)Lcom/google/common/collect/gf;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/common/collect/gj;->a:Lcom/google/common/collect/gf;

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/google/common/collect/gj;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gj;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/google/common/collect/gj;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/google/common/collect/gj;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/common/collect/gj;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gj;->standardEquals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/google/common/collect/gj;->standardHashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/common/collect/gj;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 702
    new-instance v1, Lcom/google/common/collect/gk;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/gk;-><init>(Lcom/google/common/collect/gj;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/google/common/collect/gj;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gj;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gj;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/google/common/collect/gj;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lcom/google/common/collect/gj;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
