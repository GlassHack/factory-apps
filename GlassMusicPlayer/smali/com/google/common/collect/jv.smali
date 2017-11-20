.class abstract Lcom/google/common/collect/jv;
.super Lcom/google/common/collect/iz;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2027
    invoke-direct {p0}, Lcom/google/common/collect/iz;-><init>()V

    .line 2044
    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2069
    invoke-virtual {p0, p1}, Lcom/google/common/collect/jv;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/jv;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2074
    invoke-virtual {p0, p1}, Lcom/google/common/collect/jv;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/jv;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/jt;
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/common/collect/jv;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    .line 2042
    return-void
.end method

.method protected final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2037
    new-instance v0, Lcom/google/common/collect/jw;

    invoke-direct {v0, p0}, Lcom/google/common/collect/jw;-><init>(Lcom/google/common/collect/jv;)V

    return-object v0
.end method

.method abstract c()Ljava/util/Iterator;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/google/common/collect/jv;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->clear()V

    .line 2095
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2089
    invoke-virtual {p0}, Lcom/google/common/collect/jv;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2027
    invoke-direct {p0, p1}, Lcom/google/common/collect/jv;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2084
    invoke-virtual {p0}, Lcom/google/common/collect/jv;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2079
    invoke-virtual {p0}, Lcom/google/common/collect/jv;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2027
    invoke-direct {p0, p1}, Lcom/google/common/collect/jv;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
