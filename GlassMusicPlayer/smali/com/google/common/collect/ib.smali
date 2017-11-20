.class final Lcom/google/common/collect/ib;
.super Lcom/google/common/collect/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/google/common/collect/ib;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/cp;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 845
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/google/common/collect/ib;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/google/common/collect/ib;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/common/collect/ib;->a:Ljava/util/Set;

    return-object v0
.end method
