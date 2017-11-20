.class final Lcom/google/common/collect/bn;
.super Lcom/google/common/collect/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/common/collect/bn;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/bn;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 467
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/bn;->a:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/bb;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bn;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/common/collect/bn;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/common/collect/bn;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/common/collect/bn;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 476
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/bn;->a:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/bb;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bn;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
