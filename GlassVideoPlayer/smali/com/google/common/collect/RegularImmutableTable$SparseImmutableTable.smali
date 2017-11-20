.class final Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;

.field private final b:Lcom/google/common/collect/ImmutableMap;

.field private final c:[I

.field private final d:[I


# direct methods
.method static synthetic a(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->c:[I

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->d:[I

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 2

    .prologue
    .line 225
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 2

    .prologue
    .line 243
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public final synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 261
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method final g()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 274
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final h()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)V

    return-object v0
.end method

.method public final synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->d()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->e()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->f()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
