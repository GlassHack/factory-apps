.class final Lcom/google/common/collect/kj;
.super Lcom/google/common/collect/cp;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    .line 1002
    iput-object p1, p0, Lcom/google/common/collect/kj;->a:Ljava/util/Set;

    .line 1003
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/google/common/collect/kj;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 1043
    invoke-virtual {p0, p1}, Lcom/google/common/collect/kj;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/google/common/collect/kj;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/google/common/collect/kj;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/google/common/collect/kj;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lcom/google/common/collect/kj;->standardEquals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/common/collect/kj;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1013
    new-instance v1, Lcom/google/common/collect/kk;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/kk;-><init>(Lcom/google/common/collect/kj;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/common/collect/kj;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1033
    invoke-virtual {p0, p1}, Lcom/google/common/collect/kj;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
