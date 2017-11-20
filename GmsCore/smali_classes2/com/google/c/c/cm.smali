.class abstract Lcom/google/c/c/cm;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2007
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/c/c/ci;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 2037
    invoke-virtual {p0}, Lcom/google/c/c/cm;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->d()V

    .line 2038
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2033
    invoke-virtual {p0}, Lcom/google/c/c/cm;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 2011
    invoke-virtual {p0}, Lcom/google/c/c/cm;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2013
    new-instance v1, Lcom/google/c/c/cn;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/cn;-><init>(Lcom/google/c/c/cm;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/google/c/c/cm;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->u_()I

    move-result v0

    return v0
.end method
