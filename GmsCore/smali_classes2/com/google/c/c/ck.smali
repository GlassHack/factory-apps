.class abstract Lcom/google/c/c/ck;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2044
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/c/c/ci;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/google/c/c/ck;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->d()V

    .line 2070
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2053
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 2054
    check-cast p1, Ljava/util/Map$Entry;

    .line 2055
    invoke-virtual {p0}, Lcom/google/c/c/ck;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/c/c/ci;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2057
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 2061
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 2062
    check-cast p1, Ljava/util/Map$Entry;

    .line 2063
    invoke-virtual {p0}, Lcom/google/c/c/ck;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/c/c/ci;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2065
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/google/c/c/ck;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->u_()I

    move-result v0

    return v0
.end method
