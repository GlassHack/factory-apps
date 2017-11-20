.class abstract Lcom/google/c/c/ct;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/c/c/co;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/google/c/c/ct;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/co;->clear()V

    .line 808
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/google/c/c/ct;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/c/c/co;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/c/c/ct;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/c/c/co;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/google/c/c/ct;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/co;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/google/c/c/ct;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/co;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/c/c/cu;

    invoke-direct {v1, p0}, Lcom/google/c/c/cu;-><init>(Lcom/google/c/c/ct;)V

    invoke-static {v0, v1}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;Lcom/google/c/a/y;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/google/c/c/ct;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/c/c/co;->a(Ljava/lang/Object;)I

    move-result v0

    .line 834
    if-lez v0, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/google/c/c/ct;->a()Lcom/google/c/c/co;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/c/c/co;->b(Ljava/lang/Object;I)I

    .line 836
    const/4 v0, 0x1

    .line 838
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/google/c/c/ct;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/co;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
