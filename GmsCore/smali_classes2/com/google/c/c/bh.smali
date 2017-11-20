.class final Lcom/google/c/c/bh;
.super Lcom/google/c/c/bb;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/c/c/bg;


# direct methods
.method constructor <init>(Lcom/google/c/c/bg;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/google/c/c/bb;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/google/c/c/bh;->a:Lcom/google/c/c/bg;

    .line 509
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/ek;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/c/c/bh;->a:Lcom/google/c/c/bg;

    iget-object v0, v0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    invoke-virtual {v0}, Lcom/google/c/c/be;->a()Lcom/google/c/c/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bl;->a()Lcom/google/c/c/ek;

    move-result-object v0

    .line 515
    new-instance v1, Lcom/google/c/c/bi;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/bi;-><init>(Lcom/google/c/c/bh;Ljava/util/Iterator;)V

    return-object v1
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/c/c/bh;->a:Lcom/google/c/c/bg;

    iget-object v0, v0, Lcom/google/c/c/bg;->a:Lcom/google/c/c/be;

    const/4 v0, 0x0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 548
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 549
    check-cast p1, Ljava/util/Map$Entry;

    .line 550
    iget-object v0, p0, Lcom/google/c/c/bh;->a:Lcom/google/c/c/bg;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/google/c/c/bh;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/c/c/bh;->a:Lcom/google/c/c/bg;

    invoke-virtual {v0}, Lcom/google/c/c/bg;->u_()I

    move-result v0

    return v0
.end method
