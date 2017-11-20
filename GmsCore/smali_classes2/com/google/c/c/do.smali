.class final Lcom/google/c/c/do;
.super Lcom/google/c/c/dp;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/c/a/ai;

.field final synthetic c:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/c/a/ai;Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 684
    iput-object p1, p0, Lcom/google/c/c/do;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/c/c/do;->b:Lcom/google/c/a/ai;

    iput-object p3, p0, Lcom/google/c/c/do;->c:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/c/c/dp;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/c/c/do;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/do;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/c/c/do;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/c/c/do;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/c/c/do;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/do;->b:Lcom/google/c/a/ai;

    invoke-static {v0, v1}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;Lcom/google/c/a/ai;)Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/google/c/c/do;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
