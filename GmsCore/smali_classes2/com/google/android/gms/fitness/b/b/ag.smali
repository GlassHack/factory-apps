.class final Lcom/google/android/gms/fitness/b/b/ag;
.super Lcom/google/android/gms/fitness/b/b/x;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/gms/fitness/b/b/x;

.field private final c:Lcom/google/android/gms/fitness/b/b/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/x;Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 785
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/ag;->b:Lcom/google/android/gms/fitness/b/b/x;

    .line 786
    new-instance v0, Lcom/google/android/gms/fitness/b/b/ah;

    invoke-static {}, Lcom/google/android/gms/fitness/b/b/u;->a()Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/google/android/gms/fitness/b/b/ah;-><init>(Lcom/google/android/gms/fitness/b/b/u;Lcom/google/android/gms/fitness/b/b/u;Ljava/util/NavigableMap;B)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/fitness/b/b/x;-><init>(Ljava/util/NavigableMap;B)V

    .line 788
    iput-object p2, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    .line 789
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 5

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    const-string v1, "Cannot add range %s to subRangeSet(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 813
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/b/x;->a(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 814
    return-void
.end method

.method public final b(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->b(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ag;->b:Lcom/google/android/gms/fitness/b/b/x;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/b/x;->b(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 821
    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/fitness/b/b/u;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 793
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ag;->b:Lcom/google/android/gms/fitness/b/b/x;

    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    iget-object v2, p1, Lcom/google/android/gms/fitness/b/b/u;->a:Lcom/google/android/gms/fitness/b/b/e;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 795
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 797
    :goto_1
    return v0

    .line 794
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 795
    goto :goto_1

    :cond_2
    move v0, v1

    .line 797
    goto :goto_1
.end method

.method public final d(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/w;
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->a(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    :goto_0
    return-object p0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/b/b/u;->b(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    new-instance v0, Lcom/google/android/gms/fitness/b/b/ag;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/b/ag;->c:Lcom/google/android/gms/fitness/b/b/u;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/b/b/u;->c(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/b/b/ag;-><init>(Lcom/google/android/gms/fitness/b/b/x;Lcom/google/android/gms/fitness/b/b/u;)V

    move-object p0, v0

    goto :goto_0

    .line 840
    :cond_1
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/x;->c()Lcom/google/android/gms/fitness/b/b/x;

    move-result-object p0

    goto :goto_0
.end method
