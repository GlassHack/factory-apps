.class abstract Lcom/google/c/c/ai;
.super Lcom/google/c/c/m;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/dm;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/c/c/m;-><init>(Ljava/util/Map;)V

    .line 45
    return-void
.end method


# virtual methods
.method synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/c/c/ai;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/google/c/c/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/c/c/ai;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/c/c/ai;->e(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/google/c/c/m;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/google/c/c/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/google/c/c/m;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final synthetic g()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/c/c/ai;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/google/c/c/m;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method abstract j()Ljava/util/Set;
.end method

.method public k()Ljava/util/Set;
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/c/c/m;->g()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
