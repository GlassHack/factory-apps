.class abstract Lcom/google/c/c/cv;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/c/c/co;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/google/c/c/cv;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/co;->clear()V

    .line 871
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 850
    instance-of v1, p1, Lcom/google/c/c/cp;

    if-eqz v1, :cond_0

    .line 852
    check-cast p1, Lcom/google/c/c/cp;

    .line 853
    invoke-interface {p1}, Lcom/google/c/c/cp;->b()I

    move-result v1

    if-gtz v1, :cond_1

    .line 860
    :cond_0
    :goto_0
    return v0

    .line 856
    :cond_1
    invoke-virtual {p0}, Lcom/google/c/c/cv;->a()Lcom/google/c/c/co;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/c/c/cp;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/c/c/co;->a(Ljava/lang/Object;)I

    move-result v1

    .line 857
    invoke-interface {p1}, Lcom/google/c/c/cp;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Lcom/google/c/c/cv;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/cv;->a()Lcom/google/c/c/co;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/co;->e()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Lcom/google/c/c/cp;

    invoke-interface {p1}, Lcom/google/c/c/cp;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
